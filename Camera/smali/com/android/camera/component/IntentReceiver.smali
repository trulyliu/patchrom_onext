.class public abstract Lcom/android/camera/component/IntentReceiver;
.super Lcom/android/camera/component/UIComponent;
.source "IntentReceiver.java"


# static fields
.field protected static final TIME_MANUAL:I = 0x0

.field protected static final TIME_PAUSING:I = 0x3

.field protected static final TIME_PREVIEW_STARTED:I = 0x2

.field protected static final TIME_RESUMING:I = 0x1


# instance fields
.field private final m_IntentReceiver:Landroid/content/BroadcastReceiver;

.field private m_IsReceiverRegistered:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V
    .locals 6
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "timeToRegister"
    .parameter "timeToUnregister"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 48
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 26
    new-instance v2, Lcom/android/camera/component/IntentReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/IntentReceiver$1;-><init>(Lcom/android/camera/component/IntentReceiver;)V

    iput-object v2, p0, Lcom/android/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    if-ne p4, p5, :cond_0

    .line 53
    const-string v2, "timeToRegister equals to timeToUnregister"

    invoke-static {p1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeToRegister equals to timeToUnregister"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 60
    .local v0, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    packed-switch p4, :pswitch_data_0

    .line 80
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :pswitch_0
    iget-object v0, p3, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    .line 64
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 83
    :goto_0
    if-eqz v0, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/component/IntentReceiver$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/camera/component/IntentReceiver$2;-><init>(Lcom/android/camera/component/IntentReceiver;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 98
    packed-switch p5, :pswitch_data_1

    .line 118
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :pswitch_1
    iget-object v0, p3, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    .line 68
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 69
    .local v1, propertyValue:Ljava/lang/Boolean;
    goto :goto_0

    .line 71
    .end local v1           #propertyValue:Ljava/lang/Boolean;
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Intent receiver will be registered when activity is pausing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p3, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    .line 73
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 74
    .restart local v1       #propertyValue:Ljava/lang/Boolean;
    goto :goto_0

    .line 76
    .end local v1           #propertyValue:Ljava/lang/Boolean;
    :pswitch_3
    const/4 v0, 0x0

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, propertyValue:Ljava/lang/Object;
    goto :goto_0

    .line 101
    .end local v1           #propertyValue:Ljava/lang/Object;
    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Intent receiver will be unregistered when activity is resuming"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p3, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    .line 103
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 121
    :goto_1
    if-eqz v0, :cond_2

    .line 123
    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/component/IntentReceiver$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/camera/component/IntentReceiver$3;-><init>(Lcom/android/camera/component/IntentReceiver;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_2
    return-void

    .line 106
    :pswitch_5
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Intent receiver will be unregistered when preview is started"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p3, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    .line 108
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 109
    .local v1, propertyValue:Ljava/lang/Boolean;
    goto :goto_1

    .line 111
    .end local v1           #propertyValue:Ljava/lang/Boolean;
    :pswitch_6
    iget-object v0, p3, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    .line 112
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 113
    .restart local v1       #propertyValue:Ljava/lang/Boolean;
    goto :goto_1

    .line 115
    .end local v1           #propertyValue:Ljava/lang/Boolean;
    :pswitch_7
    const/4 v0, 0x0

    .line 116
    goto :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 98
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/camera/component/IntentReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/IntentReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/IntentReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    return v0
.end method


# virtual methods
.method protected final getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public final isReceiverRegistered()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    return v0
.end method

.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 155
    return-void
.end method

.method protected onReceiverRegistered()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method protected onReceiverUnregistered()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method protected abstract prepareIntentFilter(Landroid/content/IntentFilter;)V
.end method

.method protected final registerReceiver()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "registerReceiver() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->threadAccessCheck()V

    .line 183
    iget-boolean v1, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "registerReceiver() - Already registered"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v0}, Lcom/android/camera/component/IntentReceiver;->prepareIntentFilter(Landroid/content/IntentFilter;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->onReceiverRegistered()V

    .line 200
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "registerReceiver() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final unregisterReceiver()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceiver() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->threadAccessCheck()V

    .line 212
    iget-boolean v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceiver() - Already unregistered"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    .line 223
    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->onReceiverUnregistered()V

    .line 225
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceiver() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
