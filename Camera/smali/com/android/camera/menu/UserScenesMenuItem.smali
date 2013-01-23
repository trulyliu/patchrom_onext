.class public Lcom/android/camera/menu/UserScenesMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "UserScenesMenuItem.java"


# instance fields
.field private mMenuListView:Lcom/android/camera/menu/MenuListView;

.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_ItemViewInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;

.field private m_LastSceneInL2:Lcom/android/camera/effect/EffectBase;


# direct methods
.method public constructor <init>(IILcom/android/camera/HTCCamera;Lcom/android/camera/effect/EffectBase;)V
    .locals 0
    .parameter "titleResId"
    .parameter "summaryResId"
    .parameter "m_Camera"
    .parameter "lastScene"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 28
    iput-object p4, p0, Lcom/android/camera/menu/UserScenesMenuItem;->m_LastSceneInL2:Lcom/android/camera/effect/EffectBase;

    .line 29
    iput-object p3, p0, Lcom/android/camera/menu/UserScenesMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/menu/UserScenesMenuItem;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/menu/UserScenesMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/menu/UserScenesMenuItem;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/menu/UserScenesMenuItem;->m_LastSceneInL2:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/menu/UserScenesMenuItem;)Lcom/android/camera/menu/MenuListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/menu/UserScenesMenuItem;->mMenuListView:Lcom/android/camera/menu/MenuListView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/menu/UserScenesMenuItem;Lcom/android/camera/menu/MenuListView;)Lcom/android/camera/menu/MenuListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/android/camera/menu/UserScenesMenuItem;->mMenuListView:Lcom/android/camera/menu/MenuListView;

    return-object p1
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "inflater"
    .parameter "levels"
    .parameter "convertView"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/menu/MenuItem;->getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object p4

    .line 42
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    iput-object v0, p0, Lcom/android/camera/menu/UserScenesMenuItem;->m_ItemViewInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    .line 43
    iget-object v0, p0, Lcom/android/camera/menu/UserScenesMenuItem;->m_ItemViewInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    iget-object v0, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/camera/menu/UserScenesMenuItem;->m_ItemViewInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    iget-object v0, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/widget/HtcIndicatorButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcIndicatorButton;->setVisibility(I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/camera/menu/UserScenesMenuItem;->m_ItemViewInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    iget-object v0, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/camera/menu/UserScenesMenuItem;->m_ItemViewInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    iget-object v0, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRadioButton;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/menu/UserScenesMenuItem;->m_ItemViewInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    iget-object v0, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {p0}, Lcom/android/camera/menu/UserScenesMenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/menu/UserScenesMenuItem;->m_ItemViewInfo:Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    iget-object v0, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->radioButton:Lcom/htc/widget/HtcRadioButton;

    new-instance v1, Lcom/android/camera/menu/UserScenesMenuItem$1;

    invoke-direct {v1, p0}, Lcom/android/camera/menu/UserScenesMenuItem$1;-><init>(Lcom/android/camera/menu/UserScenesMenuItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_1
    return-object p4
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public setlastSceneInL2(Lcom/android/camera/effect/EffectBase;)V
    .locals 0
    .parameter "lastScene"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/menu/UserScenesMenuItem;->m_LastSceneInL2:Lcom/android/camera/effect/EffectBase;

    .line 94
    return-void
.end method
