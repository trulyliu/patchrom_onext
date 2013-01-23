.class Lcom/android/camera/HTCCamera$TVDisplayListener;
.super Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TVDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 8124
    iput-object p1, p0, Lcom/android/camera/HTCCamera$TVDisplayListener;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8124
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera$TVDisplayListener;-><init>(Lcom/android/camera/HTCCamera;)V

    return-void
.end method


# virtual methods
.method public onTVOff()V
    .locals 4

    .prologue
    .line 8129
    const-string v1, "HTCCamera"

    const-string v2, "Reset remote screen orientation onTVOff"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8131
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8147
    :goto_0
    return-void

    .line 8134
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera$TVDisplayListener;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8135
    const-string v1, "HTCCamera"

    const-string v2, "isActivityPaused = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8141
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapSurface;->resetRemoteScreenOrientation()V

    .line 8142
    iget-object v1, p0, Lcom/android/camera/HTCCamera$TVDisplayListener;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera$TVDisplayListener;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8143
    :catch_0
    move-exception v0

    .line 8145
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "HTCCamera"

    const-string v2, "Rotate remote Camera layout may not support"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTVOn()V
    .locals 4

    .prologue
    .line 8152
    const-string v1, "HTCCamera"

    const-string v2, "set remote screen orientation onTVOn"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8154
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isSupportMirrorMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8170
    :goto_0
    return-void

    .line 8157
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera$TVDisplayListener;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8158
    const-string v1, "HTCCamera"

    const-string v2, "isActivityPaused = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8164
    :cond_1
    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1}, Lcom/htc/wrap/android/view/HtcWrapSurface;->setRemoteScreenOrientation(I)V

    .line 8165
    iget-object v1, p0, Lcom/android/camera/HTCCamera$TVDisplayListener;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->isMirrorMode:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/HTCCamera$TVDisplayListener;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8166
    :catch_0
    move-exception v0

    .line 8168
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "HTCCamera"

    const-string v2, "Rotate remote Camera layout may not support"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
