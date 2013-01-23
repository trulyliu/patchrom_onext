.class public Lcom/android/camera/effect/EffectPanelUI;
.super Lcom/android/camera/component/UIComponent;
.source "EffectPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectPanelUI$18;
    }
.end annotation


# static fields
.field private static final EFFECT_PANEL_TIMEOUT:I = 0x1388

.field private static final MSG_CLOSE_EFFECT_PANEL:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Effect Panel"


# instance fields
.field private final effectPanelState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field private m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

.field private m_EffectButton:Landroid/view/View;

.field private m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

.field private m_EffectListView:Landroid/widget/ListView;

.field private m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_EffectManager:Lcom/android/camera/effect/IEffectManager;

.field private m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

.field private m_HasPhotoEnhancer:Ljava/lang/Boolean;

.field private m_HasVideoTrimmer:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 73
    const-string v0, "Effect Panel"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 74
    const-string v0, "EffectPanelUI.EffectPanelState"

    const/4 v1, 0x2

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->effectPanelState:Lcom/android/camera/property/Property;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->onEffectButtonClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->closeUI()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/effect/EffectPanelUI;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/effect/EffectPanelUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonContent()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectPanelAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->openUI()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/PopupBubble;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/effect/EffectPanelUI;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->effectPanelState:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IJZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 41
    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/CameraMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/effect/EffectPanelUI;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/IEffectManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/effect/EffectPanelUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->isCaptureUIBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/effect/EffectPanelUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->ensureEffectItemVisible(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 41
    invoke-virtual/range {p0 .. p8}, Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/MediaInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->startPhotoEnhancer(Lcom/android/camera/MediaInfo;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/MediaInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->startVideoTrimmer(Lcom/android/camera/MediaInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/effect/EffectPanelUI;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/effect/EffectPanelUI;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/effect/EffectPanelUI;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/actionscreen/CommonActionScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/actionscreen/CommonActionScreen;)Lcom/android/camera/actionscreen/CommonActionScreen;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V

    return-void
.end method

.method private closeUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->close()V

    .line 88
    :cond_0
    return-void
.end method

.method private ensureEffectItemVisible(Z)V
    .locals 7
    .parameter "scrollSmoothly"

    .prologue
    const/4 v6, 0x0

    .line 108
    iget-object v5, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v5, :cond_0

    .line 110
    iget-object v5, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v5, v5, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 111
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    iget-object v5, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 112
    .local v2, firstIndex:I
    iget-object v5, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    .line 113
    .local v4, lastIndex:I
    iget-object v5, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v5, v5, Lcom/android/camera/effect/IEffectManager;->effectList:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 114
    .local v1, effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 117
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 120
    if-gt v3, v2, :cond_1

    .line 121
    add-int/lit8 v5, v3, -0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 133
    :goto_0
    if-eqz p1, :cond_3

    .line 134
    iget-object v5, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 140
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    .end local v1           #effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    .end local v2           #firstIndex:I
    .end local v3           #index:I
    .end local v4           #lastIndex:I
    :cond_0
    :goto_1
    return-void

    .line 122
    .restart local v0       #effect:Lcom/android/camera/effect/EffectBase;
    .restart local v1       #effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    .restart local v2       #firstIndex:I
    .restart local v3       #index:I
    .restart local v4       #lastIndex:I
    :cond_1
    if-lt v3, v4, :cond_0

    .line 124
    if-eqz p1, :cond_2

    .line 125
    iget-object v5, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectPanelAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 127
    :cond_2
    add-int/lit8 v5, v3, -0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 136
    :cond_3
    iget-object v5, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
.end method

.method private initializeUI()V
    .locals 5

    .prologue
    .line 442
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 536
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 447
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    new-instance v2, Lcom/android/camera/widget/PopupBubble;

    invoke-direct {v2, v0}, Lcom/android/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    .line 448
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    const v3, 0x7f0b0130

    invoke-virtual {p0, v3}, Lcom/android/camera/effect/EffectPanelUI;->getDimension(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    .line 449
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$12;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$12;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/PopupBubble;->setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V

    .line 460
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$13;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$13;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/PopupBubble;->setOnOpenListener(Lcom/android/camera/widget/PopupBubble$OnOpenListener;)V

    .line 471
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$14;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$14;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/PopupBubble;->setOnOutsideTouchListener(Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;)V

    .line 482
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const v3, 0x7f08006d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 483
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f08006e

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    .line 484
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 485
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;)V

    .line 486
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 489
    const-class v2, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/IEffectManager;

    .line 490
    .local v1, effectManager:Lcom/android/camera/effect/IEffectManager;
    if-eqz v1, :cond_1

    .line 492
    new-instance v3, Lcom/android/camera/effect/EffectPanelAdapter;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v2, v1, Lcom/android/camera/effect/IEffectManager;->effectList:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v3, v4, v2}, Lcom/android/camera/effect/EffectPanelAdapter;-><init>(Lcom/android/camera/HTCCamera;Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    .line 493
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectPanelAdapter;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 494
    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    iget-object v2, v1, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v3, v2}, Lcom/android/camera/effect/EffectPanelAdapter;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 495
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 499
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportTrackBallFocus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 500
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    const v3, 0x7f0200c2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 501
    :cond_2
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 502
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 503
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$15;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$15;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 524
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$16;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$16;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 535
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectListOrientation(Lcom/android/camera/rotate/UIRotation;)V

    goto/16 :goto_0
.end method

.method private onEffectButtonClicked()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 549
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectPanelUI;->togglePanel(Z)V

    goto :goto_0

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_3

    .line 552
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    new-instance v1, Lcom/android/camera/effect/EffectPanelUI$17;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/EffectPanelUI$17;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->performAction(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 578
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No action screen to perform action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 626
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 627
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 629
    :cond_1
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    sget-object v2, Lcom/android/camera/effect/EffectPanelUI$18;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 637
    sget-object v2, Lcom/android/camera/effect/EffectPanelUI$18;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    .line 646
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 637
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startPhotoEnhancer(Lcom/android/camera/MediaInfo;)V
    .locals 5
    .parameter "mediaInfo"

    .prologue
    .line 654
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPhotoEnhancer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 659
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.photoenhancer"

    const-string v3, "com.htc.photoenhancer.PhotoEnhancer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    const-string v2, "filePath"

    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    const-string v2, "degree"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 666
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot start photo enhancer"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 667
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v2, :cond_0

    .line 669
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->clearAction()V

    .line 670
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    goto :goto_0
.end method

.method private startVideoTrimmer(Lcom/android/camera/MediaInfo;)V
    .locals 5
    .parameter "mediaInfo"

    .prologue
    .line 680
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVideoTrimmer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.muvee.video.trimer.VIDEO_TRIM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 685
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.muvee.video.trimer"

    const-string v4, "com.muvee.video.trimer.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 686
    const-string v2, "data"

    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 691
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot start photo enhancer"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 692
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v2, :cond_0

    .line 694
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->clearAction()V

    .line 695
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    goto :goto_0
.end method

.method private togglePanel(Z)V
    .locals 4
    .parameter "animate"

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 707
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 711
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 713
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v1, :cond_1

    .line 714
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupBubble;->close()V

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore open togglePanel FocusingState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->isCaptureUIBlocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 720
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "ignore open togglePanel isCaptureUIBlocked"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->initializeUI()V

    .line 726
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupBubble;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 727
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupBubble;->close()V

    goto :goto_0

    .line 730
    :cond_4
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->popupOpeningEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 731
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/effect/EffectPanelUI;->ensureEffectItemVisible(Z)V

    .line 732
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateEffectButtonAvailability()V
    .locals 3

    .prologue
    .line 742
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    if-nez v2, :cond_0

    .line 768
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v2, :cond_5

    .line 749
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v2, v2, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 750
    .local v1, scene:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 752
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/android/camera/effect/AutoScene;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 767
    .end local v1           #scene:Lcom/android/camera/effect/EffectBase;
    .local v0, isEnabled:Z
    :goto_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 752
    .end local v0           #isEnabled:Z
    .restart local v1       #scene:Lcom/android/camera/effect/EffectBase;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 757
    :cond_3
    if-eqz v1, :cond_4

    instance-of v2, v1, Lcom/android/camera/sina/GifModeScene;

    if-eqz v2, :cond_4

    .line 758
    const/4 v0, 0x0

    .restart local v0       #isEnabled:Z
    goto :goto_1

    .line 760
    .end local v0           #isEnabled:Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0       #isEnabled:Z
    goto :goto_1

    .line 764
    .end local v0           #isEnabled:Z
    .end local v1           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #isEnabled:Z
    goto :goto_1
.end method

.method private updateEffectButtonContent()V
    .locals 5

    .prologue
    const v4, 0x7f02005f

    const/4 v3, 0x0

    .line 775
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v0, v1, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    .line 776
    .local v0, actionScreenState:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/UIState;>;"
    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    if-eq v1, v2, :cond_1

    .line 778
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    instance-of v1, v1, Lcom/htc/widget/HtcIconButton;

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcIconButton;->setBackgroundResource(I)V

    .line 781
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcIconButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    sget-object v1, Lcom/android/camera/effect/EffectPanelUI$18;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 789
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    instance-of v1, v1, Lcom/htc/widget/HtcIconButton;

    if-eqz v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcIconButton;->setBackgroundResource(I)V

    .line 792
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcIconButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 796
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    instance-of v1, v1, Lcom/htc/widget/HtcIconButton;

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcIconButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 799
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcIconButton;

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEffectListOrientation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectPanelAdapter;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 820
    :cond_1
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->InversePortrait:Lcom/android/camera/rotate/UIRotation;

    if-ne p1, v0, :cond_3

    .line 821
    :cond_2
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    .line 824
    :goto_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 823
    :cond_3
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->InverseLandscape:Lcom/android/camera/rotate/UIRotation;

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 97
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 100
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 101
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 172
    :pswitch_0
    return-void

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 182
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 186
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->effectPanelState:Lcom/android/camera/property/Property;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 189
    const-class v2, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0, v2}, Lcom/android/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/IEffectManager;

    iput-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    .line 191
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelAdapter;->initialize(Lcom/android/camera/HTCCamera;)V

    .line 194
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const v3, 0x7f08006f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    .line 195
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    instance-of v2, v2, Lcom/htc/widget/HtcIconButton;

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$1;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$1;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_0
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->restartingCameraEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$2;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 269
    new-instance v1, Lcom/android/camera/effect/EffectPanelUI$3;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/EffectPanelUI$3;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    .line 276
    .local v1, modeChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$4;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$4;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 364
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 365
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 366
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v2, v2, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$5;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$5;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 377
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v2, v2, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$6;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$6;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 386
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v2, v2, Lcom/android/camera/effect/IEffectManager;->effectList:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$7;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$7;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 396
    :cond_1
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$8;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$8;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 406
    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$9;

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/camera/effect/EffectPanelUI$9;-><init>(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$10;

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/camera/effect/EffectPanelUI$10;-><init>(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$11;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$11;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 434
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 2
    .parameter "fakeRotation"
    .parameter "uiRotation"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/effect/EffectPanelUI;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    .line 588
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "fakeRotation"
    .parameter "uiRotation"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/effect/EffectPanelUI;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 600
    invoke-direct {p0, p2}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectListOrientation(Lcom/android/camera/rotate/UIRotation;)V

    .line 601
    return-void
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 9
    .parameter "prevRotation"
    .parameter "rotation"

    .prologue
    const/4 v3, 0x0

    .line 610
    invoke-direct {p0, p2}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectListOrientation(Lcom/android/camera/rotate/UIRotation;)V

    .line 613
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const/16 v2, 0x2711

    const/4 v5, 0x0

    const-wide/16 v6, 0x1388

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/effect/EffectPanelUI;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    .line 618
    return-void
.end method
