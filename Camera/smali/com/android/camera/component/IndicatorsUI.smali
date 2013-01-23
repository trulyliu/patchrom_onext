.class public Lcom/android/camera/component/IndicatorsUI;
.super Lcom/android/camera/component/UIComponent;
.source "IndicatorsUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/IndicatorsUI$22;
    }
.end annotation


# static fields
.field private static final MSG_HIDE_REMAINING_COUNTER:I = 0x2

.field private static final MSG_SHOW_REMAINING_COUNTER:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Indicators"

.field private static final REMAINING_COUNTER_TIMEOUT:I = 0x1388


# instance fields
.field private final isRemainingCounterVisible:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_AutoSceneIndicator:Landroid/widget/TextView;

.field private m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_BubbleToastHandle:Lcom/android/camera/Handle;

.field private m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

.field private m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

.field private m_MuteIndicator:Landroid/widget/ImageView;

.field private m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_PhotoRemainingCounter:Landroid/widget/TextView;

.field private m_RemainingCounterContainer:Landroid/view/View;

.field private m_RemainingCounterRotateContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_SelfTimerCounter:Landroid/widget/ImageView;

.field private m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_SelfTimerIndicator:Landroid/widget/ImageView;

.field private m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_VideoRemainingCounter:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v2, 0x0

    .line 85
    const-string v0, "Indicators"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 86
    const-string v0, "IndicatorsUI.IsRemainingCounterVisible"

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/IndicatorsUI;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/IndicatorsUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->showSelfTimerCounter(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/IndicatorsUI;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->getSelfTimerCounterImage(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/component/IndicatorsUI;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/IndicatorsUI;->convertToRemainingTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/IndicatorsUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/component/IndicatorsUI;->showIndicators()V

    return-void
.end method

.method private convertToRemainingTimeString(J)Ljava/lang/String;
    .locals 13
    .parameter "totalSeconds"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 94
    rem-long v4, p1, v8

    .line 95
    .local v4, sec:J
    div-long v6, p1, v8

    rem-long v2, v6, v8

    .line 96
    .local v2, min:J
    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    .line 97
    .local v0, hour:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    .line 98
    const-string v6, "%02d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 99
    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getSelfTimerCounterImage(I)I
    .locals 1
    .parameter "second"

    .prologue
    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 995
    :goto_0
    return v0

    .line 965
    :pswitch_0
    const v0, 0x7f020030

    .line 966
    goto :goto_0

    .line 968
    :pswitch_1
    const v0, 0x7f020032

    .line 969
    goto :goto_0

    .line 971
    :pswitch_2
    const v0, 0x7f020033

    .line 972
    goto :goto_0

    .line 974
    :pswitch_3
    const v0, 0x7f020034

    .line 975
    goto :goto_0

    .line 977
    :pswitch_4
    const v0, 0x7f020035

    .line 978
    goto :goto_0

    .line 980
    :pswitch_5
    const v0, 0x7f020036

    .line 981
    goto :goto_0

    .line 983
    :pswitch_6
    const v0, 0x7f020037

    .line 984
    goto :goto_0

    .line 986
    :pswitch_7
    const v0, 0x7f020038

    .line 987
    goto :goto_0

    .line 989
    :pswitch_8
    const v0, 0x7f020039

    .line 990
    goto :goto_0

    .line 992
    :pswitch_9
    const v0, 0x7f020031

    goto :goto_0

    .line 962
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private hideRemainingCounter(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 149
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/component/IndicatorsUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/IndicatorsUI$1;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "container"
    .parameter "imageView"
    .parameter "rotation"

    .prologue
    .line 538
    if-eqz p1, :cond_0

    .line 540
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    new-instance v0, Lcom/android/camera/component/IndicatorsUI$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/component/IndicatorsUI$20;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/camera/component/IndicatorsUI;->showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;)V

    goto :goto_0
.end method

.method private setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    .locals 1
    .parameter "container"
    .parameter "imageView"
    .parameter "visible"

    .prologue
    .line 563
    if-eqz p1, :cond_1

    .line 566
    if-eqz p3, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    .line 570
    :cond_0
    invoke-virtual {p0, p1, p3, p3}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 572
    :cond_1
    return-void
.end method

.method private showIndicators()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 580
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 581
    .local v0, cameraActiviry:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 586
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method

.method private showRemainingCounter()V
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/component/IndicatorsUI$21;

    invoke-direct {v1, p0}, Lcom/android/camera/component/IndicatorsUI$21;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 641
    return-void
.end method

.method private showRemainingCounter(Ljava/util/Hashtable;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/camera/CameraMode;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, counterText:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lcom/android/camera/CameraMode;Ljava/lang/String;>;"
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 645
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 693
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 650
    invoke-virtual {p0, v4}, Lcom/android/camera/component/IndicatorsUI;->removeMessages(I)V

    .line 653
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    .line 654
    .local v8, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v0, v8, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    sget-object v1, Lcom/android/camera/component/IndicatorsUI$22;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, v8, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 667
    :cond_1
    :pswitch_0
    iget-object v0, v8, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    const-wide/16 v6, 0x64

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/IndicatorsUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z

    goto :goto_0

    .line 674
    :cond_2
    const/4 v9, 0x0

    .line 675
    .local v9, hasCounterText:Z
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_PhotoRemainingCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    const/4 v9, 0x1

    .line 678
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_PhotoRemainingCounter:Landroid/widget/TextView;

    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_VideoRemainingCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 682
    const/4 v9, 0x1

    .line 683
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_VideoRemainingCounter:Landroid/widget/TextView;

    sget-object v0, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    :cond_4
    if-eqz v9, :cond_5

    .line 686
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 689
    :goto_1
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p0, v4, v0, v1}, Lcom/android/camera/component/IndicatorsUI;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    .line 692
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 688
    :cond_5
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_1

    .line 656
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showSelfTimerCounter(Z)V
    .locals 6
    .parameter "isVisible"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 933
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_0

    .line 955
    :goto_0
    return-void

    .line 937
    :cond_0
    if-nez p1, :cond_1

    .line 939
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 944
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    .line 945
    .local v1, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 948
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    .line 950
    .local v0, interval:Lcom/android/camera/Duration;
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/camera/component/IndicatorsUI;->getSelfTimerCounterImage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 954
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v2, v5, v5}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "container"
    .parameter "imageView"

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    .line 701
    return-void
.end method

.method private updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V
    .locals 5
    .parameter "container"
    .parameter "imageView"
    .parameter "rotation"

    .prologue
    .line 705
    if-nez p1, :cond_0

    .line 738
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 711
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 714
    .local v2, imageWidth:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 723
    .local v1, imageHeight:I
    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 724
    .local v3, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p3}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 726
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 727
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 734
    :goto_2
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 737
    invoke-virtual {p1, p3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 718
    .end local v1           #imageHeight:I
    .end local v2           #imageWidth:I
    .end local v3           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    .line 719
    .restart local v2       #imageWidth:I
    const/4 v1, 0x0

    .restart local v1       #imageHeight:I
    goto :goto_1

    .line 731
    .restart local v3       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 732
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

.method private updateMuteIndicator()V
    .locals 3

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    .line 746
    .local v0, settings:Lcom/android/camera/CameraSettings;
    iget-object v1, v0, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator(ZZ)V

    .line 750
    return-void
.end method

.method private updateMuteIndicator(ZZ)V
    .locals 6
    .parameter "recordWithAudio"
    .parameter "fastFrameRecording"

    .prologue
    .line 754
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v4, :cond_0

    .line 786
    :goto_0
    return-void

    .line 758
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraType;

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    .line 760
    .local v1, is2ndCamera:Z
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v4, v5, :cond_4

    .line 761
    if-eqz p1, :cond_3

    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 766
    .local v0, iconRedId:I
    :goto_1
    if-nez v0, :cond_5

    .line 767
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    :goto_2
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v5, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v5}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    .line 773
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 774
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 775
    .local v2, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/RecordingState;->Started:Lcom/android/camera/RecordingState;

    if-eq v4, v5, :cond_6

    .line 777
    const v4, 0x7f0b00b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 778
    const v4, 0x7f0b00b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 785
    :goto_3
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    goto :goto_0

    .line 761
    .end local v0           #iconRedId:I
    .end local v2           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_3
    const v0, 0x7f020066

    goto :goto_1

    .line 763
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #iconRedId:I
    goto :goto_1

    .line 769
    :cond_5
    iget-object v4, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 782
    .restart local v2       #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v3       #res:Landroid/content/res/Resources;
    :cond_6
    const v4, 0x7f0b00b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 783
    const v4, 0x7f0b00b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3
.end method

.method private updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V
    .locals 7
    .parameter "rotation"

    .prologue
    const v6, 0x7f0b0060

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/4 v2, -0x2

    const/16 v3, 0xe

    .line 794
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 830
    :goto_0
    return-void

    .line 798
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 799
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v1, Lcom/android/camera/component/IndicatorsUI$22;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 820
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 821
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 822
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    iget-object v1, v1, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 823
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 828
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterRotateContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 802
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 803
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 804
    const v1, 0x7f0b0062

    invoke-virtual {p0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 807
    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 808
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 809
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    iget-object v1, v1, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 810
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 812
    :cond_3
    const v1, 0x7f0b0061

    invoke-virtual {p0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 815
    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 816
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 817
    const v1, 0x7f0b0062

    invoke-virtual {p0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 825
    :cond_4
    const v1, 0x7f0b0061

    invoke-virtual {p0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSelfTimerIndicator()V
    .locals 4

    .prologue
    .line 887
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_0

    .line 926
    :goto_0
    return-void

    .line 892
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_2

    .line 896
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 897
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->mainSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Duration;

    .line 902
    .local v1, interval:Lcom/android/camera/Duration;
    :goto_1
    invoke-virtual {v1}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v2

    long-to-int v2, v2

    .line 913
    const/4 v0, 0x0

    .line 921
    .end local v1           #interval:Lcom/android/camera/Duration;
    .local v0, iconRedId:I
    :goto_2
    if-nez v0, :cond_3

    .line 922
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 925
    :goto_3
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 899
    .end local v0           #iconRedId:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->frontSelfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Duration;

    .restart local v1       #interval:Lcom/android/camera/Duration;
    goto :goto_1

    .line 918
    .end local v1           #interval:Lcom/android/camera/Duration;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #iconRedId:I
    goto :goto_2

    .line 924
    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method private updateTapCaptureBubbleToast()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 837
    invoke-direct {p0, v0, v0}, Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V

    .line 838
    return-void
.end method

.method private updateTapCaptureBubbleToast(ZZ)V
    .locals 6
    .parameter "showToast"
    .parameter "forceUpdate"

    .prologue
    .line 841
    if-eqz p1, :cond_5

    .line 844
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isTapCaptureFrontEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-nez v2, :cond_1

    .line 849
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "updateTapCaptureBubbleToast() - Not front camera or Tapcapture is disabled or Video Mode, hide tap capture toast."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V

    .line 879
    :goto_0
    return-void

    .line 855
    :cond_1
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    if-eqz v2, :cond_2

    .line 857
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "updateTapCaptureBubbleToast() - No need to update."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    if-eqz v2, :cond_4

    .line 865
    invoke-virtual {p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Duration;

    .line 866
    .local v0, interval:Lcom/android/camera/Duration;
    invoke-virtual {v0}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const v1, 0x7f0a0081

    .line 867
    .local v1, resId:I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/IBubbleToastManager;->showBubbleToast(I)Lcom/android/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    goto :goto_0

    .line 866
    .end local v1           #resId:I
    :cond_3
    const v1, 0x7f0a0082

    goto :goto_1

    .line 870
    .end local v0           #interval:Lcom/android/camera/Duration;
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "updateTapCaptureBubbleToast() - No IBubbleToastManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 875
    :cond_5
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    if-eqz v2, :cond_6

    .line 876
    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    iget-object v3, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/android/camera/IBubbleToastManager;->closeBubbleToast(Lcom/android/camera/Handle;)V

    .line 877
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastHandle:Lcom/android/camera/Handle;

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    .line 112
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 115
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 116
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 136
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 139
    :goto_0
    return-void

    .line 128
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter(Ljava/util/Hashtable;)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 20

    .prologue
    .line 167
    invoke-super/range {p0 .. p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 170
    const-class v16, Lcom/android/camera/effect/IEffectControlUI;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/effect/IEffectControlUI;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    .line 171
    const-class v16, Lcom/android/camera/IBubbleToastManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/IBubbleToastManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_BubbleToastManager:Lcom/android/camera/IBubbleToastManager;

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    .line 175
    .local v6, cameraActivity:Lcom/android/camera/HTCCamera;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->isRemainingCounterVisible:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 178
    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v5

    .line 183
    .local v5, baseLayout:Landroid/view/View;
    const v16, 0x7f080083

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    .local v8, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->getFrontCameraPosition()Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    move-result-object v10

    .line 191
    .local v10, position:Lcom/android/camera/DisplayDevice$FrontCameraPosition;
    sget-object v16, Lcom/android/camera/component/IndicatorsUI$22;->$SwitchMap$com$android$camera$DisplayDevice$FrontCameraPosition:[I

    invoke-virtual {v10}, Lcom/android/camera/DisplayDevice$FrontCameraPosition;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 202
    :goto_0
    const v16, 0x7f0b00b1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 203
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    const v17, 0x7f080084

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounter:Landroid/widget/ImageView;

    .line 216
    .end local v8           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10           #position:Lcom/android/camera/DisplayDevice$FrontCameraPosition;
    :cond_0
    const v16, 0x7f08008e

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    const v17, 0x7f08008f

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, -0xff0100

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/camera/AutoDetectedScene;

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/AutoDetectedScene;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicator:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :cond_1
    const v16, 0x7f080085

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    const v17, 0x7f080086

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    .line 230
    const v16, 0x7f080087

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterRotateContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterRotateContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v16, v0

    const v17, 0x7f080088

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f08008c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 233
    .local v9, photoRemainingCounterContainer:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f080089

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 234
    .local v15, videoRemainingCounterContainer:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f08008b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 235
    .local v11, remainingCounterPaddingView:Landroid/view/View;
    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v14

    .line 236
    .local v14, startMode:Lcom/android/camera/CameraStartMode;
    iget-boolean v0, v14, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 238
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 239
    const v16, 0x7f08008d

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_PhotoRemainingCounter:Landroid/widget/TextView;

    .line 240
    iget-boolean v0, v14, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 241
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_2
    iget-boolean v0, v14, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 245
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 246
    const v16, 0x7f08008a

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/IndicatorsUI;->m_VideoRemainingCounter:Landroid/widget/TextView;

    .line 248
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/IndicatorsUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V

    .line 251
    new-instance v7, Lcom/android/camera/component/IndicatorsUI$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/camera/component/IndicatorsUI$2;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    .line 260
    .local v7, modeChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    iget-object v0, v6, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$3;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 269
    iget-object v0, v6, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 270
    iget-object v0, v6, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI;->m_EffectControlUI:Lcom/android/camera/effect/IEffectControlUI;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/effect/IEffectControlUI;->effectControlBarState:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$4;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 282
    :cond_4
    iget-object v0, v6, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$5;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 304
    iget-object v0, v6, Lcom/android/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$6;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$7;

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI$7;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$8;

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI$8;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, v6, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$9;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 366
    iget-object v0, v6, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$10;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 374
    iget-object v0, v6, Lcom/android/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/android/camera/event/Event;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$11;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$12;

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI$12;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$13;

    iget-object v0, v6, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI$13;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v4, Lcom/android/camera/component/IndicatorsUI$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/component/IndicatorsUI$14;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    .line 428
    .local v4, audioSettingsChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<Ljava/lang/Boolean;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/IndicatorsUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v13

    .line 429
    .local v13, settings:Lcom/android/camera/CameraSettings;
    iget-object v0, v13, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 430
    iget-object v0, v13, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 431
    new-instance v12, Lcom/android/camera/component/IndicatorsUI$15;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/camera/component/IndicatorsUI$15;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    .line 449
    .local v12, resolutionChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<Lcom/android/camera/Resolution;>;"
    iget-object v0, v6, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$16;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$16;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 457
    iget-object v0, v13, Lcom/android/camera/CameraSettings;->isTapCaptureFrontEnabled:Lcom/android/camera/property/Property;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/IndicatorsUI$17;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/IndicatorsUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v16

    new-instance v17, Lcom/android/camera/component/IndicatorsUI$18;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/camera/component/IndicatorsUI$18;-><init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 480
    return-void

    .line 194
    .end local v4           #audioSettingsChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<Ljava/lang/Boolean;>;"
    .end local v7           #modeChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    .end local v9           #photoRemainingCounterContainer:Landroid/view/View;
    .end local v11           #remainingCounterPaddingView:Landroid/view/View;
    .end local v12           #resolutionChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<Lcom/android/camera/Resolution;>;"
    .end local v13           #settings:Lcom/android/camera/CameraSettings;
    .end local v14           #startMode:Lcom/android/camera/CameraStartMode;
    .end local v15           #videoRemainingCounterContainer:Landroid/view/View;
    .restart local v8       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v10       #position:Lcom/android/camera/DisplayDevice$FrontCameraPosition;
    :pswitch_0
    const v16, 0x7f0b00b0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 195
    const/16 v16, 0xb

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0

    .line 198
    :pswitch_1
    const v16, 0x7f0b00b0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->getDimension(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 199
    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "fakeRotation"
    .parameter "uiRotation"

    .prologue
    .line 488
    invoke-virtual {p0, p2, p1}, Lcom/android/camera/component/IndicatorsUI;->onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 489
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "fakeRotation"
    .parameter "uiRotation"

    .prologue
    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/component/IndicatorsUI;->onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 498
    return-void
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 2
    .parameter "prevRotation"
    .parameter "rotation"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/component/IndicatorsUI;->rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    .line 508
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/component/IndicatorsUI;->rotateIndicator(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Lcom/android/camera/rotate/UIRotation;)V

    .line 509
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_AutoSceneIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounterContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 519
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI;->m_RemainingCounterContainer:Landroid/view/View;

    new-instance v1, Lcom/android/camera/component/IndicatorsUI$19;

    invoke-direct {v1, p0}, Lcom/android/camera/component/IndicatorsUI$19;-><init>(Lcom/android/camera/component/IndicatorsUI;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/camera/component/IndicatorsUI;->showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;)V

    .line 531
    :cond_2
    :goto_0
    return-void

    .line 529
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
