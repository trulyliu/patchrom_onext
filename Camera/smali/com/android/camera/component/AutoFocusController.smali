.class Lcom/android/camera/component/AutoFocusController;
.super Lcom/android/camera/IAutoFocusController;
.source "AutoFocusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/AutoFocusController$14;,
        Lcom/android/camera/component/AutoFocusController$FocusHandle;
    }
.end annotation


# static fields
.field private static final AUTO_FOCUS_CALLBACK_TIMEOUT:J = 0x1388L

.field private static final MSG_SCHEDLUE_AUTO_FOCUS:I = 0x2711

.field private static final MSG_START_AUTO_FOCUS:I = 0x2712

.field static final NAME:Ljava/lang/String; = "Auto-Focus Controller"

.field private static final m_CenterCameraArea:Landroid/hardware/Camera$Area;

.field private static final m_EmptyAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_AfCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

.field private m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

.field private m_IsFocusLocking:Z

.field private m_IsFocusModeAssigned:Z

.field private m_LastFocusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final m_LockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PendingFocusHandles:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/component/AutoFocusController$FocusHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xfa

    const/16 v2, -0xfa

    .line 73
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    sput-object v0, Lcom/android/camera/component/AutoFocusController;->m_CenterCameraArea:Landroid/hardware/Camera$Area;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/component/AutoFocusController;->m_EmptyAreas:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 6
    .parameter "cameraThread"

    .prologue
    .line 109
    const-string v1, "Auto-Focus Controller"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/IAutoFocusController;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Z)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    .line 86
    new-instance v0, Lcom/android/camera/component/AutoFocusController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AutoFocusController$1;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_AfCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/AutoFocusController;->onAutoFocusFinished(Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusHandle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/component/AutoFocusController;->autoFocus(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/AutoFocusController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->cancelAllAutoFocus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/component/AutoFocusController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusModeAssigned:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/component/AutoFocusController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/Handle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/component/AutoFocusController;->lockAutoFocus(Lcom/android/camera/Handle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/AutoFocusController;)Lcom/android/camera/debug/IOperationTimeoutController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/Handle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/component/AutoFocusController;->unlockAutoFocusInternal(Lcom/android/camera/Handle;)V

    return-void
.end method

.method private autoFocus()V
    .locals 17

    .prologue
    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - No pending auto-focusing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/IAutoFocusController;->isAutoFocusing:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 446
    :goto_0
    return-void

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;

    .line 165
    .local v6, handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - Handle : \'"

    iget-object v3, v6, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->LockFocus:Lcom/android/camera/AutoFocusMode;

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    if-nez v1, :cond_2

    .line 172
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - Auto-focus is locked"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v10

    .line 179
    .local v10, cameraThread:Lcom/android/camera/CameraThread;
    sget-object v2, Lcom/android/camera/component/AutoFocusController$14;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v1, v10, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 187
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoFocus() - Cannot auto-focus, current taking picture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto/16 :goto_0

    .line 184
    :pswitch_0
    iget-object v1, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    if-ne v1, v2, :cond_3

    .line 194
    :pswitch_1
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/IAutoFocusController;->isAutoFocusing:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    iget-object v1, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v9, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    .line 200
    .local v9, areas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 202
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v13, focusAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_a

    .line 205
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/android/camera/imaging/ImageUtility;->mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v16

    .line 208
    .local v16, rect:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->left:I

    const/16 v2, -0x3e8

    if-ge v1, v2, :cond_7

    .line 210
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    rsub-int v2, v2, -0x3e8

    add-int/2addr v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 211
    const/16 v1, -0x3e8

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 218
    :cond_4
    :goto_3
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x3e8

    if-ge v1, v2, :cond_8

    .line 220
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->top:I

    rsub-int v2, v2, -0x3e8

    add-int/2addr v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 221
    const/16 v1, -0x3e8

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 229
    :cond_5
    :goto_4
    new-instance v1, Landroid/hardware/Camera$Area;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoFocus() - Area = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 198
    .end local v9           #areas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v13           #focusAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .end local v14           #i:I
    .end local v16           #rect:Landroid/graphics/Rect;
    :cond_6
    sget-object v9, Lcom/android/camera/component/AutoFocusController;->m_EmptyAreas:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 213
    .restart local v9       #areas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local v13       #focusAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .restart local v14       #i:I
    .restart local v16       #rect:Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_4

    .line 215
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit16 v2, v2, -0x3e8

    sub-int/2addr v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 216
    const/16 v1, 0x3e8

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 223
    :cond_8
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_5

    .line 225
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v2, v2, -0x3e8

    sub-int/2addr v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 226
    const/16 v1, 0x3e8

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 235
    .end local v13           #focusAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .end local v14           #i:I
    .end local v16           #rect:Landroid/graphics/Rect;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - No focus areas, use screen center as default area"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v13, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .restart local v13       #focusAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    sget-object v1, Lcom/android/camera/component/AutoFocusController;->m_CenterCameraArea:Landroid/hardware/Camera$Area;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_a
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/camera/component/AutoFocusController;->m_LastFocusAreas:Ljava/util/List;

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v11

    .line 243
    .local v11, controller:Lcom/android/camera/CameraController;
    if-nez v11, :cond_b

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - No camera controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto/16 :goto_0

    .line 253
    :cond_b
    new-instance v12, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v1, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v2, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    invoke-direct {v12, v1, v2, v6}, Lcom/android/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;)V

    .line 254
    .local v12, e:Lcom/android/camera/AutoFocusEventArgs;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 257
    sget-object v1, Lcom/android/camera/component/AutoFocusController$14;->$SwitchMap$com$android$camera$AutoFocusMode:[I

    iget-object v2, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v2}, Lcom/android/camera/AutoFocusMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 293
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 296
    iget-object v1, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v1, v2, :cond_c

    .line 297
    const-string v1, "TOUCH_FOCUS"

    invoke-static {v1}, Lcom/android/camera/LOG;->printPerformanceStartLog(Ljava/lang/String;)V

    .line 300
    :cond_c
    iget-object v1, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v1, v2, :cond_14

    .line 301
    const-string v1, "caf-focus-mode"

    const-string v2, "touch"

    invoke-virtual {v11, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusModeAssigned:Z

    if-nez v1, :cond_d

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/AutoFocusController;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_16

    .line 311
    const-string v1, "continuous-picture"

    invoke-virtual {v11, v1}, Lcom/android/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 314
    :goto_6
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusModeAssigned:Z

    .line 318
    :cond_d
    iget-object v1, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    if-ne v1, v2, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/camera/component/AutoFocusController;->isInCenter(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 320
    :cond_e
    invoke-virtual {v11, v13}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 322
    iget-object v1, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    if-eqz v1, :cond_17

    iget-object v9, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->meteringAreas:Ljava/util/List;

    .line 324
    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 326
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .local v15, meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_1b

    .line 329
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/android/camera/imaging/ImageUtility;->mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v16

    .line 332
    .restart local v16       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->left:I

    const/16 v2, -0x3e8

    if-ge v1, v2, :cond_18

    .line 334
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    rsub-int v2, v2, -0x3e8

    add-int/2addr v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 335
    const/16 v1, -0x3e8

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 342
    :cond_f
    :goto_9
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x3e8

    if-ge v1, v2, :cond_19

    .line 344
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->top:I

    rsub-int v2, v2, -0x3e8

    add-int/2addr v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 345
    const/16 v1, -0x3e8

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 353
    :cond_10
    :goto_a
    new-instance v1, Landroid/hardware/Camera$Area;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoFocus() - Metering area = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 260
    .end local v14           #i:I
    .end local v15           #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .end local v16           #rect:Landroid/graphics/Rect;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - Auto-focus before capturing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    if-eqz v1, :cond_12

    .line 264
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - Start locking auto-focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/camera/component/AutoFocusController;->startAutoFocus(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    goto/16 :goto_0

    .line 267
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    if-nez v1, :cond_13

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - Auto-focus is already locked"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/IAutoFocusController;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 271
    new-instance v1, Lcom/android/camera/component/AutoFocusController$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v6}, Lcom/android/camera/component/AutoFocusController$3;-><init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 282
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - Internal state error"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoFocus() - IsAutoFocusLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoFocus() - IsFocusLocking : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    .line 286
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto/16 :goto_0

    .line 302
    :cond_14
    iget-object v1, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Face:Lcom/android/camera/AutoFocusMode;

    if-ne v1, v2, :cond_15

    .line 303
    const-string v1, "caf-focus-mode"

    const-string v2, "face"

    invoke-virtual {v11, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 305
    :cond_15
    const-string v1, "caf-focus-mode"

    const-string v2, "default"

    invoke-virtual {v11, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 313
    :cond_16
    const-string v1, "continuous-video"

    invoke-virtual {v11, v1}, Lcom/android/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 322
    :cond_17
    sget-object v9, Lcom/android/camera/component/AutoFocusController;->m_EmptyAreas:Ljava/util/ArrayList;

    goto/16 :goto_7

    .line 337
    .restart local v14       #i:I
    .restart local v15       #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .restart local v16       #rect:Landroid/graphics/Rect;
    :cond_18
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_f

    .line 339
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit16 v2, v2, -0x3e8

    sub-int/2addr v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 340
    const/16 v1, 0x3e8

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_9

    .line 347
    :cond_19
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_10

    .line 349
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v2, v2, -0x3e8

    sub-int/2addr v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 350
    const/16 v1, 0x3e8

    move-object/from16 v0, v16

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .line 359
    .end local v14           #i:I
    .end local v15           #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .end local v16           #rect:Landroid/graphics/Rect;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - No metering areas, use screen center as default area"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v15, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .restart local v15       #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    sget-object v1, Lcom/android/camera/component/AutoFocusController;->m_CenterCameraArea:Landroid/hardware/Camera$Area;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_1b
    invoke-virtual {v11, v15}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    .line 409
    .end local v15           #meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    :goto_b
    invoke-virtual {v11}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 412
    iget-object v1, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v1, v2, :cond_1c

    .line 413
    const-string v1, "TOUCH_FOCUS"

    invoke-static {v1}, Lcom/android/camera/LOG;->printPerformanceFinishLog(Ljava/lang/String;)V

    .line 416
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/IAutoFocusController;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 417
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/android/camera/component/AutoFocusController;->raiseAutoFocusFinishedEvent(Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V

    .line 420
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto/16 :goto_0

    .line 406
    :cond_1d
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 407
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_b

    .line 428
    :cond_1e
    iget-object v1, v6, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v2, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    if-eq v1, v2, :cond_1f

    .line 430
    invoke-virtual {v11, v13}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 431
    invoke-virtual {v11, v13}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - Enable touch AEC"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :goto_c
    const-string v1, "auto"

    invoke-virtual {v11, v1}, Lcom/android/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v11}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 444
    const/16 v3, 0x2712

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x12c

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/camera/component/AutoFocusController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z

    goto/16 :goto_0

    .line 437
    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 438
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_c

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 257
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private autoFocus(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/android/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto :goto_0
.end method

.method private cancelAllAutoFocus()V
    .locals 3

    .prologue
    .line 536
    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    if-eqz v2, :cond_0

    .line 537
    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/AutoFocusController;->cancelAutoFocus(Lcom/android/camera/Handle;)V

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/AutoFocusController$FocusHandle;

    .line 539
    .local v0, handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;
    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    goto :goto_0

    .line 540
    .end local v0           #handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 541
    const/16 v2, 0x2711

    invoke-virtual {p0, v2}, Lcom/android/camera/component/AutoFocusController;->removeMessages(I)V

    .line 542
    return-void
.end method

.method private cancelAutoFocusDirectly()V
    .locals 3

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocusDirectly()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocusDirectly - Camera.cancelAutoFocus();"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 531
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocusDirectly() - Failed to cancel auto-focus"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isInCenter(Ljava/util/List;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, areas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 658
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 668
    :cond_1
    :goto_0
    return v2

    .line 660
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_1

    .line 663
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 664
    .local v0, area:Landroid/graphics/RectF;
    if-nez v0, :cond_3

    move v2, v3

    .line 665
    goto :goto_0

    .line 667
    :cond_3
    invoke-static {v0}, Lcom/android/camera/imaging/ImageUtility;->mapToCameraArea(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    .line 668
    .local v1, rect:Landroid/graphics/Rect;
    sget-object v2, Lcom/android/camera/component/AutoFocusController;->m_CenterCameraArea:Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private lockAutoFocus(Lcom/android/camera/Handle;)V
    .locals 7
    .parameter "handle"

    .prologue
    const/4 v6, 0x1

    .line 699
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoFocus() - Handle : \'"

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 702
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoFocus() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoFocus() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 713
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 716
    iput-boolean v6, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    .line 717
    iget-object v0, p0, Lcom/android/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 720
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->cancelAllAutoFocus()V

    .line 723
    sget-object v0, Lcom/android/camera/AutoFocusMode;->LockFocus:Lcom/android/camera/AutoFocusMode;

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_LastFocusAreas:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/AutoFocusController;->autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;)Lcom/android/camera/Handle;

    goto :goto_0
.end method

.method private onAutoFocusFinished(Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V
    .locals 6
    .parameter "handle"
    .parameter "isSuccessful"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished("

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 733
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Handle : \'"

    invoke-static {v0, v1, p1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 736
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    if-eq v0, p1, :cond_1

    .line 738
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Current handle : \'"

    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    iget-object v2, v2, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    iget-object v4, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 766
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Current handle : \'null\'"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_1
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_2

    .line 748
    const-string v0, "TOUCH_FOCUS"

    invoke-static {v0}, Lcom/android/camera/LOG;->printPerformanceFinishLog(Ljava/lang/String;)V

    .line 751
    :cond_2
    sget-object v0, Lcom/android/camera/component/AutoFocusController$14;->$SwitchMap$com$android$camera$AutoFocusMode:[I

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    iget-object v1, v1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v1}, Lcom/android/camera/AutoFocusMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 759
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    .line 762
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/AutoFocusController;->raiseAutoFocusFinishedEvent(Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V

    .line 765
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->scheduleAutoFocus()V

    goto :goto_0

    .line 755
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onAutoFocusFinished() - Auto-focus locked"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    goto :goto_1

    .line 751
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private raiseAutoFocusCanceledEvent(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V
    .locals 4
    .parameter "handle"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v2, p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v3, p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 774
    return-void
.end method

.method private raiseAutoFocusFinishedEvent(Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V
    .locals 4
    .parameter "handle"
    .parameter "isSuccessful"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v2, p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v3, p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/android/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;Z)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 782
    return-void
.end method

.method private scheduleAutoFocus()V
    .locals 3

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 790
    const/16 v0, 0x2711

    invoke-virtual {p0, p0, v0}, Lcom/android/camera/component/AutoFocusController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 796
    :goto_0
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "scheduleAutoFocus() - No more pending auto-focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/android/camera/IAutoFocusController;->isAutoFocusing:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private startAutoFocus(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V
    .locals 8
    .parameter "handle"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startAutoFocus()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    if-eq p1, v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startAutoFocus() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :goto_0
    return-void

    .line 816
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    const-string v1, "Auto focus"

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/android/camera/component/AutoFocusController;->m_AfCallbackTimeoutCallback:Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/debug/IOperationTimeoutController;->startTimer(Ljava/lang/String;JLcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;Lcom/android/camera/IAsyncOperationExecutor;Ljava/lang/Object;)Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/android/camera/Handle;

    .line 820
    :cond_1
    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_2

    .line 821
    const-string v0, "TOUCH_FOCUS"

    invoke-static {v0}, Lcom/android/camera/LOG;->printPerformanceStartLog(Ljava/lang/String;)V

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startAutoFocus() - Camera.autoFocus()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/component/AutoFocusController$12;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/AutoFocusController$12;-><init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 837
    iget-object v0, p0, Lcom/android/camera/IAutoFocusController;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v2, p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    iget-object v3, p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/camera/AutoFocusEventArgs;-><init>(Ljava/util/List;Lcom/android/camera/AutoFocusMode;Lcom/android/camera/Handle;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 839
    :catch_0
    move-exception v7

    .line 841
    .local v7, ex:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "startAutoFocus() - Failed to start auto-focus"

    invoke-static {v0, v1, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 842
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_3

    .line 843
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v1, p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 844
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/component/AutoFocusController;->onAutoFocusFinished(Lcom/android/camera/component/AutoFocusController$FocusHandle;Z)V

    goto :goto_0
.end method

.method private unlockAutoFocusInternal(Lcom/android/camera/Handle;)V
    .locals 8
    .parameter "handle"

    .prologue
    const/4 v7, 0x0

    .line 878
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoFocusInternal() - Handle : \'"

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 881
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoFocusInternal() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoFocusInternal() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 889
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 892
    iput-boolean v7, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    .line 893
    iget-object v0, p0, Lcom/android/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 896
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    .line 901
    .local v6, cameraThread:Lcom/android/camera/CameraThread;
    sget-object v1, Lcom/android/camera/component/AutoFocusController$14;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v0, v6, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 907
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockAutoFocusInternal() - Cannot unlock AF, taking picture state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 912
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->cancelAllAutoFocus()V

    .line 915
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V

    goto :goto_0

    .line 901
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public autoFocus(Lcom/android/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/android/camera/Handle;
    .locals 5
    .parameter "focusMode"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/AutoFocusMode;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)",
            "Lcom/android/camera/Handle;"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, focusAreas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    .local p3, meteringAreas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    new-instance v0, Lcom/android/camera/component/AutoFocusController$FocusHandle;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/camera/component/AutoFocusController$FocusHandle;-><init>(Lcom/android/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)V

    .line 120
    .local v0, handle:Lcom/android/camera/component/AutoFocusController$FocusHandle;
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "autoFocus() - Create new handle : \'"

    iget-object v3, v0, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoFocusController;->autoFocus(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    .line 138
    :goto_0
    return-object v0

    .line 127
    :cond_0
    new-instance v1, Lcom/android/camera/component/AutoFocusController$2;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/component/AutoFocusController$2;-><init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public cancelAutoFocus(Lcom/android/camera/Handle;)V
    .locals 5
    .parameter "handle"

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocus() - Null handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .end local p1
    :goto_0
    return-void

    .line 460
    .restart local p1
    :cond_0
    instance-of v1, p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;

    if-nez v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocus() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_2

    .line 469
    new-instance v1, Lcom/android/camera/component/AutoFocusController$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/AutoFocusController$4;-><init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/Handle;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->threadAccessCheck()V

    .line 482
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 484
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocus() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocus() - Handle : \'"

    iget-object v3, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 491
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    if-ne v1, p1, :cond_7

    .line 494
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    iget-object v1, v1, Lcom/android/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/android/camera/Handle;

    if-eqz v1, :cond_4

    .line 495
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    iget-object v2, v2, Lcom/android/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/android/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/IOperationTimeoutController;->stopTimer(Lcom/android/camera/Handle;)V

    .line 498
    :cond_4
    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/android/camera/component/AutoFocusController;->removeMessages(I)V

    .line 499
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 500
    .local v0, camera:Landroid/hardware/Camera;
    if-eqz v0, :cond_5

    .line 501
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 504
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_CurrentFocusHandle:Lcom/android/camera/component/AutoFocusController$FocusHandle;

    .line 505
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z

    .line 508
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->scheduleAutoFocus()V

    .line 517
    .end local v0           #camera:Landroid/hardware/Camera;
    :cond_6
    check-cast p1, Lcom/android/camera/component/AutoFocusController$FocusHandle;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/camera/component/AutoFocusController;->raiseAutoFocusCanceledEvent(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    goto :goto_0

    .line 510
    .restart local p1
    :cond_7
    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_PendingFocusHandles:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 512
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "cancelAutoFocus() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 550
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 561
    invoke-super {p0, p1}, Lcom/android/camera/IAutoFocusController;->handleMessage(Landroid/os/Message;)V

    .line 564
    :goto_0
    return-void

    .line 553
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/AutoFocusController;->autoFocus()V

    goto :goto_0

    .line 557
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/component/AutoFocusController$FocusHandle;

    invoke-direct {p0, v0}, Lcom/android/camera/component/AutoFocusController;->startAutoFocus(Lcom/android/camera/component/AutoFocusController$FocusHandle;)V

    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 573
    invoke-super {p0}, Lcom/android/camera/IAutoFocusController;->initializeOverride()V

    .line 576
    const-class v1, Lcom/android/camera/debug/IOperationTimeoutController;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/AutoFocusController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/IOperationTimeoutController;

    iput-object v1, p0, Lcom/android/camera/component/AutoFocusController;->m_TimeoutController:Lcom/android/camera/debug/IOperationTimeoutController;

    .line 579
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 580
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$5;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 588
    iget-object v1, v0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$6;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 600
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$7;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 617
    :cond_0
    iget-object v1, v0, Lcom/android/camera/CameraThread;->previewStoppingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$8;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 626
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, v0, Lcom/android/camera/CameraThread;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AutoFocusController$9;-><init>(Lcom/android/camera/component/AutoFocusController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/AutoFocusController$10;

    iget-object v3, v0, Lcom/android/camera/CameraThread;->recordingState:Lcom/android/camera/property/Property;

    sget-object v4, Lcom/android/camera/RecordingState;->Stopping:Lcom/android/camera/RecordingState;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/AutoFocusController$10;-><init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    return-void
.end method

.method public lockAutoFocus(Ljava/lang/String;)Lcom/android/camera/Handle;
    .locals 7
    .parameter "name"

    .prologue
    .line 678
    new-instance v6, Lcom/android/camera/Handle;

    invoke-direct {v6, p1}, Lcom/android/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 679
    .local v6, handle:Lcom/android/camera/Handle;
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoFocus() - Create handle : \'"

    iget-object v2, v6, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 682
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-direct {p0, v6}, Lcom/android/camera/component/AutoFocusController;->lockAutoFocus(Lcom/android/camera/Handle;)V

    .line 695
    :goto_0
    return-object v6

    .line 686
    :cond_0
    new-instance v0, Lcom/android/camera/component/AutoFocusController$11;

    invoke-direct {v0, p0, v6}, Lcom/android/camera/component/AutoFocusController$11;-><init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public unlockAutoFocus(Lcom/android/camera/Handle;)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 855
    if-nez p1, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoFocus() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :goto_0
    return-void

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/AutoFocusController;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    invoke-direct {p0, p1}, Lcom/android/camera/component/AutoFocusController;->unlockAutoFocusInternal(Lcom/android/camera/Handle;)V

    goto :goto_0

    .line 866
    :cond_1
    new-instance v0, Lcom/android/camera/component/AutoFocusController$13;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/component/AutoFocusController$13;-><init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AutoFocusController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
