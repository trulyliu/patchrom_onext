.class Lcom/android/camera/component/CaptureUIBlockManager;
.super Lcom/android/camera/component/UIComponent;
.source "CaptureUIBlockManager.java"

# interfaces
.implements Lcom/android/camera/ICaptureUIBlockManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "Capture-UI Block Manager"


# instance fields
.field private final isCaptureUIBlocked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Handles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ReleaseBlocksRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v2, 0x0

    .line 62
    const-string v0, "Capture-UI Block Manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Lcom/android/camera/component/CaptureUIBlockManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/CaptureUIBlockManager$1;-><init>(Lcom/android/camera/component/CaptureUIBlockManager;)V

    iput-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_ReleaseBlocksRunnable:Ljava/lang/Runnable;

    .line 63
    const-string v0, "CaptureUIBlockManager.IsCaptureUIBlocked"

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    .line 64
    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureUIBlockManager;->initialize()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/CaptureUIBlockManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/component/CaptureUIBlockManager;->releaseSoftBlocks()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/CaptureUIBlockManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_ReleaseBlocksRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private releaseSoftBlocks()V
    .locals 8

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "releaseSoftBlocks()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, i:I
    :goto_0
    if-ltz v7, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;

    .line 152
    .local v6, handle:Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;
    iget v0, v6, Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "releaseSoftBlocks() - Release block \'"

    iget-object v2, v6, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'["

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseSoftBlocks() - Block \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is still active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    .end local v6           #handle:Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "releaseSoftBlocks() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    :cond_2
    return-void
.end method


# virtual methods
.method public blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;
    .locals 8
    .parameter "name"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 74
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "blockCaptureUI(\'"

    const-string v3, "\', "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureUIBlockManager;->threadAccessCheck()V

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureUIBlockManager;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "blockCaptureUI() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-object v6

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureUIBlockManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "blockCaptureUI() - Block capture UI after pausing activity"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    new-instance v6, Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;-><init>(Lcom/android/camera/component/CaptureUIBlockManager;Ljava/lang/String;I)V

    .line 92
    .local v6, handle:Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;
    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "blockCaptureUI() - New handle ID : "

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "blockCaptureUI() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 115
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 116
    return-void
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureUIBlockManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 129
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 132
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/CaptureUIBlockManager$2;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/CaptureUIBlockManager$2;-><init>(Lcom/android/camera/component/CaptureUIBlockManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public unblockCaptureUI(Lcom/android/camera/Handle;)Z
    .locals 6
    .parameter "handle"

    .prologue
    const/4 v0, 0x0

    .line 174
    if-nez p1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unblockCaptureUI() - Null handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    return v0

    .line 179
    :cond_0
    instance-of v1, p1, Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unblockCaptureUI() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureUIBlockManager;->threadAccessCheck()V

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/component/CaptureUIBlockManager;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 189
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unblockCaptureUI() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unblockCaptureUI(\'"

    iget-object v3, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "])"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    iget-object v1, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 197
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unblockCaptureUI() - Invalid handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "unblockCaptureUI() - Handle count : "

    iget-object v3, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    iget-object v1, p0, Lcom/android/camera/component/CaptureUIBlockManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 204
    iget-object v1, p0, Lcom/android/camera/component/CaptureUIBlockManager;->isCaptureUIBlocked:Lcom/android/camera/property/Property;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
