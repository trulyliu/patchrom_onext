.class Lcom/android/camera/component/MainBar;
.super Lcom/android/camera/component/UIComponent;
.source "MainBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/MainBar$26;
    }
.end annotation


# static fields
.field private static final MSG_CLOSE_POPUP:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Main-bar"

.field private static final POPUP_TIMEOUT:I = 0x1f40


# instance fields
.field private m_AdjustCameraSwitchView:Landroid/view/View;

.field private m_CurrentAnchor:Landroid/view/View;

.field private m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

.field private m_FlashButton:Lcom/htc/widget/HtcIconButton;

.field private m_FlashButtonContainter:Landroid/widget/RelativeLayout;

.field private m_FunctionBar:Landroid/view/View;

.field private final m_PopupClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

.field private m_PopupOffsetX:I

.field private m_PopupOffsetY:I

.field private final m_PopupOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

.field private m_ScenesButton:Lcom/htc/widget/HtcIconButton;

.field private m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

.field private m_SettingsButton:Lcom/htc/widget/HtcIconButton;

.field private m_SettingsButtonContainter:Landroid/widget/RelativeLayout;

.field private m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

.field private m_SwitchButton:Lcom/htc/widget/HtcIconButton;

.field private m_SwitchButtonContainter:Landroid/widget/RelativeLayout;

.field private final settingsMenuState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 147
    const-string v0, "Main-bar"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 109
    new-instance v0, Lcom/android/camera/component/MainBar$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/MainBar$1;-><init>(Lcom/android/camera/component/MainBar;)V

    iput-object v0, p0, Lcom/android/camera/component/MainBar;->m_PopupClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    .line 128
    new-instance v0, Lcom/android/camera/component/MainBar$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/MainBar$2;-><init>(Lcom/android/camera/component/MainBar;)V

    iput-object v0, p0, Lcom/android/camera/component/MainBar;->m_PopupOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

    .line 148
    const-string v0, "MainBar.SettingsMenuState"

    const/4 v1, 0x2

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/MainBar;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateSceneButtonStates()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateFlashIcon()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateButtonStates()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/component/MainBar;Lcom/android/camera/UIState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/component/MainBar;->onSettingsPanelStateChanged(Lcom/android/camera/UIState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->resetCloseMenuTimer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/component/MainBar;Lcom/android/camera/menu/MenuItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/MainBar;->onSceneMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/component/MainBar;Lcom/android/camera/menu/MenuItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/MainBar;->onSettingsMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/MainBar;)Lcom/android/camera/widget/PopupBubble;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/MainBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->showSettingsPanel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/MainBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->showScenePanel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->switchFlashMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/MainBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->toggleSettingsPanel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/MainBar;Lcom/android/camera/effect/EffectBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/component/MainBar;->setSceneButtonIcon(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method private closePopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->close()V

    .line 160
    iput-object v1, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    .line 161
    iput-object v1, p0, Lcom/android/camera/component/MainBar;->m_CurrentAnchor:Landroid/view/View;

    .line 163
    :cond_0
    return-void
.end method

.method private initializeSettingsPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 500
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    if-eqz v1, :cond_0

    .line 561
    :goto_0
    return-void

    .line 506
    :cond_0
    new-instance v1, Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/SettingsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    .line 507
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/SettingsMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    new-instance v1, Lcom/android/camera/menu/ScenesMenu;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/ScenesMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    .line 509
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/ScenesMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    new-instance v0, Lcom/android/camera/component/MainBar$20;

    invoke-direct {v0, p0}, Lcom/android/camera/component/MainBar$20;-><init>(Lcom/android/camera/component/MainBar;)V

    .line 521
    .local v0, menuTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    invoke-virtual {v1, v0}, Lcom/android/camera/menu/ScenesMenu;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 522
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    new-instance v2, Lcom/android/camera/component/MainBar$21;

    invoke-direct {v2, p0}, Lcom/android/camera/component/MainBar$21;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/ScenesMenu;->setOnMenuItemContentClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;)V

    .line 530
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    new-instance v2, Lcom/android/camera/component/MainBar$22;

    invoke-direct {v2, p0}, Lcom/android/camera/component/MainBar$22;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/ScenesMenu;->setOnMenuItemClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;)V

    .line 538
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v1, v0}, Lcom/android/camera/menu/SettingsMenu;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 539
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    new-instance v2, Lcom/android/camera/component/MainBar$23;

    invoke-direct {v2, p0}, Lcom/android/camera/component/MainBar$23;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/SettingsMenu;->setOnMenuItemContentClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;)V

    .line 547
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    new-instance v2, Lcom/android/camera/component/MainBar$24;

    invoke-direct {v2, p0}, Lcom/android/camera/component/MainBar$24;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/SettingsMenu;->setOnMenuItemClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;)V

    goto :goto_0
.end method

.method private isCurrentAnchor(Landroid/view/View;)Z
    .locals 1
    .parameter "anchor"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentAnchor:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCaptureModeItemClicked(Lcom/android/camera/menu/MenuItem;I)V
    .locals 4
    .parameter "item"
    .parameter "id"

    .prologue
    .line 569
    const-class v1, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/MainBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    .line 570
    .local v0, effectManager:Lcom/android/camera/effect/IEffectManager;
    if-eqz v0, :cond_0

    .line 572
    packed-switch p2, :pswitch_data_0

    .line 587
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureModeItemClicked() - Unknown item ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    .line 594
    return-void

    .line 575
    :pswitch_0
    const-class v1, Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    goto :goto_0

    .line 578
    :pswitch_1
    const-class v1, Lcom/android/camera/effect/HdrScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    goto :goto_0

    .line 581
    :pswitch_2
    const-class v1, Lcom/android/camera/effect/PanoramaScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    goto :goto_0

    .line 584
    :pswitch_3
    const-class v1, Lcom/android/camera/effect/SmartShotScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onSceneMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V
    .locals 3
    .parameter "item"
    .parameter "id"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scenemenu id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    packed-switch p2, :pswitch_data_0

    .line 625
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    .line 626
    :pswitch_0
    return-void

    .line 603
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method private onSettingsMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V
    .locals 3
    .parameter "item"
    .parameter "id"

    .prologue
    .line 670
    sparse-switch p2, :sswitch_data_0

    .line 687
    :goto_0
    instance-of v0, p1, Lcom/android/camera/menu/CheckBoxMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/menu/MenuItem;->getParent()Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/menu/WhiteBalanceMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/menu/MenuItem;->getParent()Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/menu/CameraIsoMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/menu/MenuItem;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    .line 692
    :cond_0
    :goto_1
    return-void

    .line 673
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    goto :goto_0

    .line 676
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    goto :goto_0

    .line 682
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/MainBar;->onCaptureModeItemClicked(Lcom/android/camera/menu/MenuItem;I)V

    goto :goto_1

    .line 670
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
    .end sparse-switch
.end method

.method private onSettingsPanelStateChanged(Lcom/android/camera/UIState;)V
    .locals 4
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 700
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    sget-object v0, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/camera/component/MainBar;->setButtonVisibility(Landroid/view/View;Z)V

    .line 703
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;

    sget-object v0, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-ne p1, v0, :cond_4

    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/android/camera/component/MainBar;->setButtonVisibility(Landroid/view/View;Z)V

    .line 706
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    sget-object v0, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/component/MainBar;->isCurrentAnchor(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v1

    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/android/camera/component/MainBar;->setButtonVisibility(Landroid/view/View;Z)V

    .line 709
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    sget-object v0, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/component/MainBar;->isCurrentAnchor(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-direct {p0, v3, v2}, Lcom/android/camera/component/MainBar;->setButtonVisibility(Landroid/view/View;Z)V

    .line 711
    return-void

    :cond_3
    move v0, v2

    .line 700
    goto :goto_0

    :cond_4
    move v0, v2

    .line 703
    goto :goto_1

    :cond_5
    move v0, v2

    .line 706
    goto :goto_2
.end method

.method private resetCloseMenuTimer()V
    .locals 6

    .prologue
    const/16 v2, 0x2711

    .line 751
    invoke-virtual {p0, v2}, Lcom/android/camera/component/MainBar;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    const-wide/16 v3, 0x1f40

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/MainBar;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 754
    return-void
.end method

.method private setButtonVisibility(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "isVisible"

    .prologue
    const/4 v1, 0x0

    .line 761
    if-eqz p1, :cond_0

    .line 763
    if-eqz p2, :cond_1

    .line 765
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/component/MainBar;->showUI(Landroid/view/View;ZZ)V

    .line 766
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/camera/component/MainBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private setSceneButtonIcon(Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "scene"

    .prologue
    .line 778
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setSceneButtonIcon"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    instance-of v1, p1, Lcom/android/camera/effect/IScene;

    if-nez v1, :cond_1

    .line 782
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setSceneButtonIcon - Enter but not set IScene. Return."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    const v0, 0x7f020058

    .line 787
    .local v0, icon:I
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraController;->isSmartSceneDetectSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 788
    const v0, 0x7f02004b

    .line 790
    :cond_2
    instance-of v1, p1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v1, :cond_3

    .line 792
    sget-object v2, Lcom/android/camera/component/MainBar$26;->$SwitchMap$com$android$camera$AutoDetectedScene:[I

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v1}, Lcom/android/camera/AutoDetectedScene;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 824
    const v0, 0x7f020058

    .line 828
    :cond_3
    :goto_1
    instance-of v1, p1, Lcom/android/camera/effect/AutoScene;

    if-eqz v1, :cond_4

    .line 829
    const v0, 0x7f02004b

    .line 830
    :cond_4
    instance-of v1, p1, Lcom/android/camera/effect/PortraitScene;

    if-eqz v1, :cond_5

    .line 831
    const v0, 0x7f02004e

    .line 832
    :cond_5
    instance-of v1, p1, Lcom/android/camera/effect/LandscapeScene;

    if-eqz v1, :cond_6

    .line 833
    const v0, 0x7f020048

    .line 834
    :cond_6
    instance-of v1, p1, Lcom/android/camera/effect/SmartShotScene;

    if-eqz v1, :cond_7

    .line 835
    const v0, 0x7f020046

    .line 836
    :cond_7
    instance-of v1, p1, Lcom/android/camera/effect/ActionScene;

    if-eqz v1, :cond_8

    .line 837
    const v0, 0x7f02003e

    .line 838
    :cond_8
    instance-of v1, p1, Lcom/android/camera/effect/PanoramaScene;

    if-eqz v1, :cond_9

    .line 839
    const v0, 0x7f02004d

    .line 840
    :cond_9
    instance-of v1, p1, Lcom/android/camera/sina/GifModeScene;

    if-eqz v1, :cond_a

    .line 841
    const v0, 0x7f020045

    .line 842
    :cond_a
    instance-of v1, p1, Lcom/android/camera/effect/HdrScene;

    if-eqz v1, :cond_b

    .line 843
    const v0, 0x7f020047

    .line 844
    :cond_b
    instance-of v1, p1, Lcom/android/camera/effect/TextScene;

    if-eqz v1, :cond_c

    .line 845
    const v0, 0x7f02005b

    .line 848
    :cond_c
    instance-of v1, p1, Lcom/android/camera/effect/CloseUpScene;

    if-eqz v1, :cond_d

    .line 849
    const v0, 0x7f020049

    .line 850
    :cond_d
    instance-of v1, p1, Lcom/android/camera/effect/BacklightScene;

    if-eqz v1, :cond_e

    .line 851
    const v0, 0x7f02003f

    .line 852
    :cond_e
    instance-of v1, p1, Lcom/android/camera/effect/LowlightScene;

    if-eqz v1, :cond_f

    .line 853
    const v0, 0x7f02004a

    .line 861
    :cond_f
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    goto/16 :goto_0

    .line 794
    :pswitch_0
    const v0, 0x7f020058

    .line 795
    goto :goto_1

    .line 797
    :pswitch_1
    const v0, 0x7f020054

    .line 798
    goto :goto_1

    .line 800
    :pswitch_2
    const v0, 0x7f020055

    .line 801
    goto :goto_1

    .line 803
    :pswitch_3
    const v0, 0x7f020059

    .line 804
    goto :goto_1

    .line 806
    :pswitch_4
    const v0, 0x7f020056

    .line 807
    goto :goto_1

    .line 809
    :pswitch_5
    const v0, 0x7f020057

    .line 810
    goto :goto_1

    .line 812
    :pswitch_6
    const v0, 0x7f020052

    .line 813
    goto :goto_1

    .line 815
    :pswitch_7
    const v0, 0x7f020053

    .line 816
    goto :goto_1

    .line 821
    :pswitch_8
    const v0, 0x7f02005a

    .line 822
    goto/16 :goto_1

    .line 792
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
    .end packed-switch
.end method

.method private setupModesMenu()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 871
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/menu/MenuItem;>;"
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    new-instance v0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_fast_fps"

    const v3, 0x7f0a00bd

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IIIZ)V

    .line 884
    .local v0, item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    .line 885
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 886
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    .end local v0           #item:Lcom/android/camera/menu/MenuItem;
    :cond_0
    new-instance v0, Lcom/android/camera/menu/RadioButtonMenuItem;

    const v1, 0x7f0a00be

    invoke-direct {v0, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    .line 891
    .restart local v0       #item:Lcom/android/camera/menu/MenuItem;
    const-string v1, "com.htc.R.drawable.icon_btn_auto_dark"

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    .line 892
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 893
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    .line 897
    .local v7, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v7}, Lcom/android/camera/component/HdrController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 899
    new-instance v0, Lcom/android/camera/menu/RadioButtonMenuItem;

    .end local v0           #item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0a00c7

    invoke-direct {v0, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    .line 900
    .restart local v0       #item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    .line 901
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 902
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_1
    invoke-static {v7}, Lcom/android/camera/component/PanoramaController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 908
    new-instance v0, Lcom/android/camera/menu/RadioButtonMenuItem;

    .end local v0           #item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0a00c6

    invoke-direct {v0, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    .line 909
    .restart local v0       #item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    .line 910
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 911
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_2
    invoke-static {v7}, Lcom/android/camera/component/SmartShotController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 917
    new-instance v0, Lcom/android/camera/menu/RadioButtonMenuItem;

    .end local v0           #item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0a00bf

    invoke-direct {v0, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    .line 918
    .restart local v0       #item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    .line 919
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 920
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    :cond_3
    return-void
.end method

.method private showPopup(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "content"
    .parameter "anchor"

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    .line 936
    new-instance v0, Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    .line 937
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;)V

    .line 938
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_PopupClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V

    .line 939
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_PopupOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setOnOpenListener(Lcom/android/camera/widget/PopupBubble$OnOpenListener;)V

    .line 940
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 941
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    new-instance v1, Lcom/android/camera/component/MainBar$25;

    invoke-direct {v1, p0}, Lcom/android/camera/component/MainBar$25;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setOnOutsideTouchListener(Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;)V

    .line 952
    iput-object p2, p0, Lcom/android/camera/component/MainBar;->m_CurrentAnchor:Landroid/view/View;

    .line 955
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->popupOpeningEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 958
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    iget v1, p0, Lcom/android/camera/component/MainBar;->m_PopupOffsetX:I

    iget v2, p0, Lcom/android/camera/component/MainBar;->m_PopupOffsetY:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;II)V

    .line 959
    const/16 v0, 0x2711

    const-wide/16 v1, 0x1f40

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/camera/component/MainBar;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    .line 960
    return-void
.end method

.method private showScenePanel()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1008
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1037
    :goto_0
    return v0

    .line 1012
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->isCaptureUIBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 1013
    goto :goto_0

    .line 1016
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->initializeSettingsPanel()V

    .line 1019
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    invoke-virtual {v0}, Lcom/android/camera/menu/ScenesMenu;->updateItemContents()V

    .line 1022
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/MainBar;->updateScenesPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1025
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 1028
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 1032
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/component/MainBar;->showPopup(Landroid/view/View;Landroid/view/View;)V

    .line 1035
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move v0, v2

    .line 1037
    goto :goto_0
.end method

.method private showSettingsPanel()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 968
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 999
    :goto_0
    return v0

    .line 972
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->isCaptureUIBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 973
    goto :goto_0

    .line 976
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->initializeSettingsPanel()V

    .line 979
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v0}, Lcom/android/camera/menu/SettingsMenu;->initializeMenuItems()V

    .line 980
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v0}, Lcom/android/camera/menu/SettingsMenu;->updateItemContents()V

    .line 981
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v0}, Lcom/android/camera/menu/SettingsMenu;->collapseAllItems()V

    .line 982
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/SettingsMenu;->setSelectedGroup(I)V

    .line 986
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/MainBar;->updateSettingsPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 989
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 992
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 995
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/component/MainBar;->showPopup(Landroid/view/View;Landroid/view/View;)V

    .line 998
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move v0, v2

    .line 999
    goto :goto_0
.end method

.method private switchFlashMode()V
    .locals 6

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1047
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1049
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchFlashMode() - HasFlash = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchFlashMode() - IsFlashDisabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "switchFlashMode() - Current flash mode is "

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1057
    sget-object v3, Lcom/android/camera/component/MainBar$26;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1107
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchFlashMode() - Unknown camera mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    .line 1062
    .local v2, scene:Lcom/android/camera/effect/EffectBase;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/camera/sina/GifModeScene;

    if-eqz v3, :cond_2

    .line 1063
    sget-object v4, Lcom/android/camera/component/MainBar$26;->$SwitchMap$com$android$camera$FlashMode:[I

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/FlashMode;

    invoke-virtual {v3}, Lcom/android/camera/FlashMode;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    .line 1075
    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    .line 1110
    .end local v2           #scene:Lcom/android/camera/effect/EffectBase;
    .local v1, nextMode:Lcom/android/camera/FlashMode;
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_0

    .line 1066
    .end local v1           #nextMode:Lcom/android/camera/FlashMode;
    .restart local v2       #scene:Lcom/android/camera/effect/EffectBase;
    :pswitch_1
    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    .line 1067
    .restart local v1       #nextMode:Lcom/android/camera/FlashMode;
    goto :goto_1

    .line 1069
    .end local v1           #nextMode:Lcom/android/camera/FlashMode;
    :pswitch_2
    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    .line 1070
    .restart local v1       #nextMode:Lcom/android/camera/FlashMode;
    goto :goto_1

    .line 1072
    .end local v1           #nextMode:Lcom/android/camera/FlashMode;
    :pswitch_3
    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    .line 1073
    .restart local v1       #nextMode:Lcom/android/camera/FlashMode;
    goto :goto_1

    .line 1082
    .end local v1           #nextMode:Lcom/android/camera/FlashMode;
    :cond_2
    sget-object v4, Lcom/android/camera/component/MainBar$26;->$SwitchMap$com$android$camera$FlashMode:[I

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/FlashMode;

    invoke-virtual {v3}, Lcom/android/camera/FlashMode;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_2

    .line 1091
    :pswitch_4
    sget-object v1, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    .line 1092
    .restart local v1       #nextMode:Lcom/android/camera/FlashMode;
    goto :goto_1

    .line 1085
    .end local v1           #nextMode:Lcom/android/camera/FlashMode;
    :pswitch_5
    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    .line 1086
    .restart local v1       #nextMode:Lcom/android/camera/FlashMode;
    goto :goto_1

    .line 1088
    .end local v1           #nextMode:Lcom/android/camera/FlashMode;
    :pswitch_6
    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    .line 1089
    .restart local v1       #nextMode:Lcom/android/camera/FlashMode;
    goto :goto_1

    .line 1099
    .end local v1           #nextMode:Lcom/android/camera/FlashMode;
    .end local v2           #scene:Lcom/android/camera/effect/EffectBase;
    :pswitch_7
    iget-object v3, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1100
    sget-object v1, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    .restart local v1       #nextMode:Lcom/android/camera/FlashMode;
    goto :goto_1

    .line 1102
    .end local v1           #nextMode:Lcom/android/camera/FlashMode;
    :cond_3
    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    .line 1103
    .restart local v1       #nextMode:Lcom/android/camera/FlashMode;
    goto :goto_1

    .line 1057
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 1063
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1082
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private toggleSettingsPanel()V
    .locals 2

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->initializeSettingsPanel()V

    .line 1122
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    if-ne v0, v1, :cond_0

    .line 1123
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    .line 1126
    :goto_0
    return-void

    .line 1125
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->showSettingsPanel()Z

    goto :goto_0
.end method

.method private updateButtonStates()V
    .locals 4

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1135
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    .line 1138
    .local v1, isSettingsEnable:Z
    if-eqz v1, :cond_0

    .line 1139
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    .line 1142
    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v2, :cond_1

    .line 1143
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    .line 1145
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v2, :cond_2

    .line 1146
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    .line 1148
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateSceneButtonStates()V

    .line 1150
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateFlashIcon()V

    .line 1151
    return-void
.end method

.method private updateFlashIcon()V
    .locals 14

    .prologue
    .line 1194
    iget-object v12, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    if-nez v12, :cond_0

    .line 1287
    :goto_0
    return-void

    .line 1198
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1200
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v12, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v13, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v12, v13}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v9

    .line 1202
    .local v9, isSettingsEnable:Z
    iget-object v12, v0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, v0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_1

    if-nez v9, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v12

    sget-object v13, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v12, v13, :cond_4

    .line 1204
    :cond_1
    iget-object v12, v0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, v0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1205
    :cond_2
    iget-object v12, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    const v13, 0x7f020043

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    .line 1207
    :cond_3
    iget-object v12, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    goto :goto_0

    .line 1212
    :cond_4
    iget-object v12, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/FlashMode;

    .line 1215
    .local v4, flashMode:Lcom/android/camera/FlashMode;
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v12

    iget-object v12, v12, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/effect/EffectBase;

    .line 1216
    .local v11, scene:Lcom/android/camera/effect/EffectBase;
    if-eqz v11, :cond_7

    instance-of v12, v11, Lcom/android/camera/sina/GifModeScene;

    if-eqz v12, :cond_7

    .line 1220
    iget-object v12, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    sget-object v13, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    invoke-virtual {v12, v13}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    sget-object v13, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v12, v13}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1223
    :cond_5
    const v1, 0x7f020043

    .line 1224
    .local v1, flashIconID:I
    const v6, 0x7f0a0264

    .line 1233
    .local v6, flashTextID:I
    :goto_1
    iget-object v12, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    .line 1286
    .end local v1           #flashIconID:I
    .end local v6           #flashTextID:I
    :goto_2
    iget-object v12, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1228
    :cond_6
    const v1, 0x7f020044

    .line 1229
    .restart local v1       #flashIconID:I
    const v6, 0x7f0a0263

    .restart local v6       #flashTextID:I
    goto :goto_1

    .line 1235
    .end local v1           #flashIconID:I
    .end local v6           #flashTextID:I
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v12

    sget-object v13, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v12, v13, :cond_b

    .line 1238
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1239
    .local v10, res:Landroid/content/res/Resources;
    const v12, 0x7f070009

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1242
    .local v5, flashModes:[Ljava/lang/String;
    const/4 v12, 0x3

    new-array v3, v12, [I

    fill-array-data v3, :array_0

    .line 1243
    .local v3, flashIcons:[I
    const v12, 0x7f07000b

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1246
    .local v7, flashTexts:Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    .line 1247
    .local v2, flashIconIndex:I
    array-length v12, v5

    add-int/lit8 v8, v12, -0x1

    .local v8, i:I
    :goto_3
    if-ltz v8, :cond_8

    .line 1249
    iget-object v12, v4, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    aget-object v13, v5, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1251
    move v2, v8

    .line 1255
    :cond_8
    if-gez v2, :cond_9

    .line 1257
    const/4 v2, 0x0

    .line 1258
    sget-object v4, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    .line 1262
    :cond_9
    iget-object v12, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    aget v13, v3, v2

    invoke-virtual {v12, v13}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    goto :goto_2

    .line 1247
    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 1270
    .end local v2           #flashIconIndex:I
    .end local v3           #flashIcons:[I
    .end local v5           #flashModes:[Ljava/lang/String;
    .end local v7           #flashTexts:Landroid/content/res/TypedArray;
    .end local v8           #i:I
    .end local v10           #res:Landroid/content/res/Resources;
    :cond_b
    iget-object v12, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    sget-object v13, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    invoke-virtual {v12, v13}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 1272
    const v1, 0x7f020043

    .line 1273
    .restart local v1       #flashIconID:I
    const v6, 0x7f0a0264

    .line 1283
    .restart local v6       #flashTextID:I
    :goto_4
    iget-object v12, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    goto :goto_2

    .line 1278
    .end local v1           #flashIconID:I
    .end local v6           #flashTextID:I
    :cond_c
    const v1, 0x7f020044

    .line 1279
    .restart local v1       #flashIconID:I
    const v6, 0x7f0a0263

    .restart local v6       #flashTextID:I
    goto :goto_4

    .line 1242
    :array_0
    .array-data 0x4
        0x42t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private updateModesMenu()V
    .locals 0

    .prologue
    .line 1317
    return-void
.end method

.method private updateSceneButtonStates()V
    .locals 4

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1157
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    .line 1160
    .local v1, isSettingsEnable:Z
    if-eqz v1, :cond_0

    .line 1161
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    .line 1164
    :cond_0
    if-eqz v1, :cond_1

    .line 1165
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v2

    iget-boolean v1, v2, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    .line 1168
    :cond_1
    if-eqz v1, :cond_2

    .line 1170
    sget-object v2, Lcom/android/camera/component/MainBar$26;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1178
    const/4 v1, 0x0

    .line 1184
    :cond_2
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v2, :cond_3

    .line 1185
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    .line 1186
    :cond_3
    return-void

    .line 1175
    :pswitch_1
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isFrontCameraSceneEnabled()Z

    move-result v1

    .line 1176
    goto :goto_0

    .line 1170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateScenesPanelRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 11
    .parameter "rotation"

    .prologue
    const v10, 0x7f0b0046

    const v9, 0x7f0b0045

    const/4 v8, 0x6

    const/4 v7, -0x2

    .line 1364
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    if-nez v6, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1368
    .local v2, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    invoke-virtual {v6}, Lcom/android/camera/menu/ScenesMenu;->getItems()[Lcom/android/camera/menu/MenuItem;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v4, 0x0

    .line 1371
    .local v4, scenesMenuSize:I
    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1374
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1375
    .local v5, width:I
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1385
    .local v1, height:I
    :goto_2
    const-class v6, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0, v6}, Lcom/android/camera/component/MainBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    .line 1386
    .local v0, effectManager:Lcom/android/camera/effect/IEffectManager;
    if-eqz v0, :cond_2

    .line 1388
    iget-object v6, v0, Lcom/android/camera/effect/IEffectManager;->sceneList:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1389
    .local v3, sceneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v8, :cond_2

    .line 1390
    const/4 v1, -0x2

    .line 1392
    .end local v3           #sceneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    :cond_2
    if-gt v4, v8, :cond_3

    .line 1393
    const v6, 0x7f0b0047

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1395
    :cond_3
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    invoke-static {v6, v5, v1}, Lcom/android/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    .line 1398
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v6, :cond_0

    .line 1400
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v6, v7, v7}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    .line 1401
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v6, p1}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 1368
    .end local v0           #effectManager:Lcom/android/camera/effect/IEffectManager;
    .end local v1           #height:I
    .end local v4           #scenesMenuSize:I
    .end local v5           #width:I
    :cond_4
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    invoke-virtual {v6}, Lcom/android/camera/menu/ScenesMenu;->getItems()[Lcom/android/camera/menu/MenuItem;

    move-result-object v6

    array-length v4, v6

    goto :goto_1

    .line 1380
    .restart local v4       #scenesMenuSize:I
    :cond_5
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1381
    .restart local v5       #width:I
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .restart local v1       #height:I
    goto :goto_2
.end method

.method private updateSettingsPanelRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 7
    .parameter "rotation"

    .prologue
    const v6, 0x7f0b0044

    const v5, 0x7f0b0043

    const/4 v4, -0x2

    .line 1325
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    if-nez v3, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1332
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1337
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1338
    .local v2, width:I
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1348
    .local v0, height:I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-static {v3, v2, v0}, Lcom/android/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    .line 1351
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v3, :cond_0

    .line 1353
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v3, v4, v4}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    .line 1354
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v3, p1}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 1345
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_2
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1346
    .restart local v2       #width:I
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0       #height:I
    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 172
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 175
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 176
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 191
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 194
    :pswitch_0
    return-void

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 12

    .prologue
    const v11, 0x7f02004b

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 204
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 205
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "initialize"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 208
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    iget-object v7, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v6, v7}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 211
    const v6, 0x7f0b0113

    invoke-virtual {p0, v6}, Lcom/android/camera/component/MainBar;->getDimension(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/component/MainBar;->m_PopupOffsetX:I

    .line 212
    const v6, 0x7f0b0114

    invoke-virtual {p0, v6}, Lcom/android/camera/component/MainBar;->getDimension(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/component/MainBar;->m_PopupOffsetY:I

    .line 215
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v6

    const v7, 0x7f0800a3

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    .line 216
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v7, 0x7f0800a5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/camera/component/MainBar;->m_SettingsButtonContainter:Landroid/widget/RelativeLayout;

    .line 217
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v7, 0x7f0800a6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    iput-object v6, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    .line 218
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcIconButton;->stayInPress(Z)V

    .line 219
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v7, 0x7f0800a4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    iput-object v6, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    .line 220
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcIconButton;->stayInPress(Z)V

    .line 221
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v7, 0x7f0800a8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/camera/component/MainBar;->m_SwitchButtonContainter:Landroid/widget/RelativeLayout;

    .line 222
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v7, 0x7f0800a9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    iput-object v6, p0, Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;

    .line 223
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v7, 0x7f0800aa

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/camera/component/MainBar;->m_FlashButtonContainter:Landroid/widget/RelativeLayout;

    .line 224
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v7, 0x7f0800ab

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    iput-object v6, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    .line 225
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v7, 0x7f0800a7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/component/MainBar;->m_AdjustCameraSwitchView:Landroid/view/View;

    .line 228
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x31

    if-eq v6, v7, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x32

    if-ne v6, v7, :cond_2

    .line 231
    :cond_0
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_FlashButtonContainter:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_1

    .line 232
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_FlashButtonContainter:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 234
    :cond_1
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_SettingsButtonContainter:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_2

    .line 236
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_SettingsButtonContainter:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 237
    .local v5, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b010f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v5, v10, v10, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 240
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_SettingsButtonContainter:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 244
    .end local v5           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    sget-object v6, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    iget-boolean v6, v6, Lcom/android/camera/CameraType;->isSupported:Z

    if-nez v6, :cond_4

    .line 247
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_SwitchButtonContainter:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_3

    .line 248
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_SwitchButtonContainter:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 250
    :cond_3
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_AdjustCameraSwitchView:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 251
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_AdjustCameraSwitchView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_4
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    const v7, 0x7f020050

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    .line 256
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;

    const v7, 0x7f020040

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    .line 258
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v6, :cond_5

    .line 260
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    .line 261
    .local v1, cameraSettings:Lcom/android/camera/CameraSettings;
    if-eqz v1, :cond_9

    .line 263
    const-string v6, "auto"

    const-string v7, "pref_camera_scene"

    invoke-virtual {v1, v7}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 264
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    .line 273
    .end local v1           #cameraSettings:Lcom/android/camera/CameraSettings;
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateFlashIcon()V

    .line 278
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    new-instance v7, Lcom/android/camera/component/MainBar$3;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$3;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    new-instance v7, Lcom/android/camera/component/MainBar$4;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$4;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;

    new-instance v7, Lcom/android/camera/component/MainBar$5;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$5;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    new-instance v7, Lcom/android/camera/component/MainBar$6;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$6;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    const-class v6, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {p0, v6}, Lcom/android/camera/component/MainBar;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/IEffectManager;

    .line 316
    .local v3, effectManager:Lcom/android/camera/effect/IEffectManager;
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    new-instance v7, Lcom/android/camera/component/MainBar$7;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$7;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 334
    if-eqz v3, :cond_6

    .line 336
    iget-object v6, v3, Lcom/android/camera/effect/IEffectManager;->effectAppliedEvent:Lcom/android/camera/event/Event;

    new-instance v7, Lcom/android/camera/component/MainBar$8;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$8;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 347
    :cond_6
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v7, Lcom/android/camera/component/MainBar$9;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$9;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 357
    new-instance v4, Lcom/android/camera/component/MainBar$10;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$10;-><init>(Lcom/android/camera/component/MainBar;)V

    .line 365
    .local v4, flashStateChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v6, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 366
    iget-object v6, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/camera/component/MainBar$11;

    iget-object v8, v0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lcom/android/camera/component/MainBar$11;-><init>(Lcom/android/camera/component/MainBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    invoke-virtual {v6, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 375
    iget-object v6, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/camera/component/MainBar$12;

    iget-object v8, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lcom/android/camera/component/MainBar$12;-><init>(Lcom/android/camera/component/MainBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->autoDetectedScene:Lcom/android/camera/property/Property;

    new-instance v7, Lcom/android/camera/component/MainBar$13;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$13;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 407
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v7, Lcom/android/camera/component/MainBar$14;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$14;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 417
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v6, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 418
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    new-instance v7, Lcom/android/camera/component/MainBar$15;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$15;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 441
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    new-instance v7, Lcom/android/camera/component/MainBar$16;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$16;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 449
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v7, Lcom/android/camera/component/MainBar$17;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$17;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 457
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    new-instance v7, Lcom/android/camera/component/MainBar$18;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$18;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 466
    iget-object v6, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    new-instance v7, Lcom/android/camera/component/MainBar$19;

    invoke-direct {v7, p0}, Lcom/android/camera/component/MainBar$19;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 483
    if-eqz v3, :cond_7

    .line 485
    iget-object v6, v3, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    .line 486
    .local v2, currentScene:Lcom/android/camera/effect/EffectBase;
    instance-of v6, v2, Lcom/android/camera/effect/AutoScene;

    if-nez v6, :cond_7

    .line 488
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "Set requested Scene"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0, v2}, Lcom/android/camera/component/MainBar;->setSceneButtonIcon(Lcom/android/camera/effect/EffectBase;)V

    .line 492
    .end local v2           #currentScene:Lcom/android/camera/effect/EffectBase;
    :cond_7
    return-void

    .line 266
    .end local v3           #effectManager:Lcom/android/camera/effect/IEffectManager;
    .end local v4           #flashStateChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    .restart local v1       #cameraSettings:Lcom/android/camera/CameraSettings;
    :cond_8
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    const v7, 0x7f020058

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    goto/16 :goto_0

    .line 269
    :cond_9
    iget-object v6, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    goto/16 :goto_0
.end method

.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 2
    .parameter "fakeRotation"
    .parameter "uiRotation"

    .prologue
    const/4 v1, 0x0

    .line 635
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    .line 636
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    .line 637
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    .line 638
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    .line 641
    invoke-direct {p0, p1}, Lcom/android/camera/component/MainBar;->updateSettingsPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 642
    invoke-direct {p0, p1}, Lcom/android/camera/component/MainBar;->updateScenesPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 643
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "fakeRotation"
    .parameter "uiRotation"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 653
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 654
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 655
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 658
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/component/MainBar;->isCurrentAnchor(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    invoke-direct {p0, p2}, Lcom/android/camera/component/MainBar;->updateSettingsPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/component/MainBar;->isCurrentAnchor(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-direct {p0, p2}, Lcom/android/camera/component/MainBar;->updateScenesPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 6
    .parameter "prevRotation"
    .parameter "rotation"

    .prologue
    const/16 v2, 0x2711

    .line 720
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 725
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 727
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/component/MainBar;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    .line 730
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/component/MainBar;->updateSettingsPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 731
    invoke-direct {p0, p2}, Lcom/android/camera/component/MainBar;->updateScenesPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 734
    invoke-virtual {p0, v2}, Lcom/android/camera/component/MainBar;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 735
    const-wide/16 v3, 0x1f40

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/MainBar;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    .line 736
    :cond_4
    return-void
.end method
