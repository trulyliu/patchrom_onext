.class public Lcom/android/camera/widget/SwitchItemListView;
.super Landroid/widget/FrameLayout;
.source "SwitchItemListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;
    }
.end annotation


# instance fields
.field private final CAMERA_SWITCH:I

.field private final ITEM_COUNT:I

.field private final MODE_SWITCH:I

.field private is2ndCam:Z

.field private isCameraMode:Z

.field private mMainList:Lcom/htc/widget/HtcListView;

.field private mMainMenu:Landroid/widget/LinearLayout;

.field private mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_CameraThread:Lcom/android/camera/CameraThread;

.field private m_Context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/widget/SwitchItemListView;->ITEM_COUNT:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/SwitchItemListView;->MODE_SWITCH:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/SwitchItemListView;->CAMERA_SWITCH:I

    .line 66
    iput-object p1, p0, Lcom/android/camera/widget/SwitchItemListView;->m_Context:Landroid/content/Context;

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/widget/SwitchItemListView;->initialize()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/CameraThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/SwitchItemListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/widget/SwitchItemListView;->updateStateForNewMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView;->mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/SwitchItemListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/camera/widget/SwitchItemListView;->isCameraMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/widget/SwitchItemListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/camera/widget/SwitchItemListView;->is2ndCam:Z

    return v0
.end method

.method private updateStateForNewMode()V
    .locals 3

    .prologue
    .line 171
    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    .line 172
    .local v0, cameraType:Lcom/android/camera/CameraType;
    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    .line 174
    .local v1, newMode:Lcom/android/camera/CameraMode;
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #newMode:Lcom/android/camera/CameraMode;
    check-cast v1, Lcom/android/camera/CameraMode;

    .line 176
    .restart local v1       #newMode:Lcom/android/camera/CameraMode;
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cameraType:Lcom/android/camera/CameraType;
    check-cast v0, Lcom/android/camera/CameraType;

    .line 179
    .restart local v0       #cameraType:Lcom/android/camera/CameraType;
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/widget/SwitchItemListView;->updateStateForNewMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)V

    .line 180
    return-void
.end method

.method private updateStateForNewMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)V
    .locals 3
    .parameter "cameraType"
    .parameter "newMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    sget-object v0, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne p2, v0, :cond_0

    .line 159
    iput-boolean v2, p0, Lcom/android/camera/widget/SwitchItemListView;->isCameraMode:Z

    .line 163
    :goto_0
    sget-object v0, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    if-ne p1, v0, :cond_1

    .line 164
    iput-boolean v2, p0, Lcom/android/camera/widget/SwitchItemListView;->is2ndCam:Z

    .line 167
    :goto_1
    return-void

    .line 161
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/widget/SwitchItemListView;->isCameraMode:Z

    goto :goto_0

    .line 166
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/widget/SwitchItemListView;->is2ndCam:Z

    goto :goto_1
.end method


# virtual methods
.method public initialize()V
    .locals 4

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->m_Context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 73
    .local v1, li:Landroid/view/LayoutInflater;
    const v2, 0x7f030013

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->m_Context:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/HTCCamera;

    iput-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 76
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;

    .line 78
    invoke-direct {p0}, Lcom/android/camera/widget/SwitchItemListView;->updateStateForNewMode()V

    .line 80
    const v2, 0x7f080090

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/SwitchItemListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->mMainMenu:Landroid/widget/LinearLayout;

    .line 81
    const v2, 0x7f080091

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/SwitchItemListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->mMainList:Lcom/htc/widget/HtcListView;

    .line 82
    new-instance v2, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;-><init>(Lcom/android/camera/widget/SwitchItemListView;)V

    iput-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    .line 83
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->mMainList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/camera/widget/SwitchItemListView;->mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->mMainList:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 85
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->mMainList:Lcom/htc/widget/HtcListView;

    new-instance v3, Lcom/android/camera/widget/SwitchItemListView$1;

    invoke-direct {v3, p0}, Lcom/android/camera/widget/SwitchItemListView$1;-><init>(Lcom/android/camera/widget/SwitchItemListView;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 115
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->mMainList:Lcom/htc/widget/HtcListView;

    new-instance v3, Lcom/android/camera/widget/SwitchItemListView$2;

    invoke-direct {v3, p0}, Lcom/android/camera/widget/SwitchItemListView$2;-><init>(Lcom/android/camera/widget/SwitchItemListView;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    .line 130
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/widget/SwitchItemListView$3;

    invoke-direct {v3, p0}, Lcom/android/camera/widget/SwitchItemListView$3;-><init>(Lcom/android/camera/widget/SwitchItemListView;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 142
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/widget/SwitchItemListView$4;

    invoke-direct {v3, p0}, Lcom/android/camera/widget/SwitchItemListView$4;-><init>(Lcom/android/camera/widget/SwitchItemListView;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 151
    return-void
.end method
