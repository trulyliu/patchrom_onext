.class public Lcom/android/camera/widget/VideoScenesPropertyItem;
.super Landroid/widget/LinearLayout;
.source "VideoScenesPropertyItem.java"


# instance fields
.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_Context:Landroid/content/Context;

.field private m_Settings:Lcom/android/camera/CameraSettings;

.field private m_hd60fps:Lcom/htc/widget/HtcIconButton;

.field private m_normal:Lcom/htc/widget/HtcIconButton;

.field private m_slow_motion:Lcom/htc/widget/HtcIconButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_Context:Landroid/content/Context;

    .line 36
    check-cast p1, Lcom/android/camera/HTCCamera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 37
    iget-object v0, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_Settings:Lcom/android/camera/CameraSettings;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/VideoScenesPropertyItem;)Lcom/android/camera/CameraSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_Settings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/VideoScenesPropertyItem;)Lcom/htc/widget/HtcIconButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_slow_motion:Lcom/htc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/VideoScenesPropertyItem;)Lcom/htc/widget/HtcIconButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_normal:Lcom/htc/widget/HtcIconButton;

    return-object v0
.end method


# virtual methods
.method public initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    iget-object v2, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_Context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 43
    .local v1, li:Landroid/view/LayoutInflater;
    const v2, 0x7f03004c

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 45
    .local v0, base:Landroid/widget/LinearLayout;
    const v2, 0x7f08016f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcIconButton;

    iput-object v2, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_slow_motion:Lcom/htc/widget/HtcIconButton;

    .line 46
    const v2, 0x7f080170

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcIconButton;

    iput-object v2, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_normal:Lcom/htc/widget/HtcIconButton;

    .line 47
    const v2, 0x7f080171

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcIconButton;

    iput-object v2, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_hd60fps:Lcom/htc/widget/HtcIconButton;

    .line 50
    iget-object v2, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_Settings:Lcom/android/camera/CameraSettings;

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_slow_motion:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 53
    iget-object v2, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_normal:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_slow_motion:Lcom/htc/widget/HtcIconButton;

    new-instance v3, Lcom/android/camera/widget/VideoScenesPropertyItem$1;

    invoke-direct {v3, p0}, Lcom/android/camera/widget/VideoScenesPropertyItem$1;-><init>(Lcom/android/camera/widget/VideoScenesPropertyItem;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v2, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_normal:Lcom/htc/widget/HtcIconButton;

    new-instance v3, Lcom/android/camera/widget/VideoScenesPropertyItem$2;

    invoke-direct {v3, p0}, Lcom/android/camera/widget/VideoScenesPropertyItem$2;-><init>(Lcom/android/camera/widget/VideoScenesPropertyItem;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_normal:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 58
    iget-object v2, p0, Lcom/android/camera/widget/VideoScenesPropertyItem;->m_slow_motion:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    goto :goto_0
.end method
