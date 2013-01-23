.class public Lcom/android/camera/component/BatteryWatcher;
.super Lcom/android/camera/component/IntentReceiver;
.source "BatteryWatcher.java"


# static fields
.field private static volatile BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer; = null

.field private static volatile BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer; = null

.field private static final MSG_CHECK_BATTERY_CAPACITY:I = 0x2711

.field private static final MSG_CHECK_BATTERY_TEMPERATURE:I = 0x2712

.field private static final MSG_UPDATE_BATTERY_CAPACITY:I = 0x2713

.field private static final MSG_UPDATE_BATTERY_TEMPERATURE:I = 0x2714

.field public static final NAME:Ljava/lang/String; = "Battery Watcher"

.field public static final PATH_BATTERY_CAPACITY:Ljava/lang/String; = "/sys/class/power_supply/battery/capacity"

.field private static final PATH_BATTERY_CAPACITY_LIMIT:Ljava/lang/String; = "/sys/camera_led_status/low_cap_limit"

.field private static final PATH_BATTERY_TEMPERATURE:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_temp"

.field private static final PATH_BATTERY_TEMPERATURE_LIMIT:Ljava/lang/String; = "/sys/camera_led_status/low_temp_limit"


# instance fields
.field private final isLowBatteryTemperature:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isLowPower:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_WorkerThread:Lcom/android/camera/WorkerThread;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 7
    .parameter "cameraActivity"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x2

    .line 77
    const-string v1, "Battery Watcher"

    const/4 v2, 0x1

    const/4 v5, 0x3

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V

    .line 37
    new-instance v0, Lcom/android/camera/component/BatteryWatcher$1;

    const-string v1, "Battery Check Thread"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/component/BatteryWatcher$1;-><init>(Lcom/android/camera/component/BatteryWatcher;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    .line 78
    const-string v0, "BatteryWatcher.IsLowBatteryTemperature"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v4, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    .line 79
    const-string v0, "BatteryWatcher.IsLowPower"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v4, p0, v1}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->isLowPower:Lcom/android/camera/property/Property;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/BatteryWatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/component/BatteryWatcher;->checkBatteryCapacity()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/BatteryWatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/component/BatteryWatcher;->checkBatteryTemperature()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/BatteryWatcher;)Lcom/android/camera/WorkerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/BatteryWatcher;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->isLowPower:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/BatteryWatcher;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method private checkBatteryCapacity()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 87
    const-class v1, Lcom/android/camera/component/BatteryWatcher;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 91
    const-string v0, "/sys/camera_led_status/low_cap_limit"

    invoke-static {v0}, Lcom/android/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 92
    .local v7, value:Ljava/lang/Integer;
    if-eqz v7, :cond_1

    .line 93
    sput-object v7, Lcom/android/camera/component/BatteryWatcher;->BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

    .line 97
    .end local v7           #value:Ljava/lang/Integer;
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    const/16 v2, 0x2713

    sget-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/BatteryWatcher;->isLower(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/BatteryWatcher;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 99
    return-void

    .line 95
    .restart local v7       #value:Ljava/lang/Integer;
    :cond_1
    const/16 v0, 0xf

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

    goto :goto_0

    .line 97
    .end local v7           #value:Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v3

    .line 98
    goto :goto_1
.end method

.method private checkBatteryTemperature()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 106
    const-class v1, Lcom/android/camera/component/BatteryWatcher;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "/sys/camera_led_status/low_temp_limit"

    invoke-static {v0}, Lcom/android/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 111
    .local v7, value:Ljava/lang/Integer;
    if-eqz v7, :cond_1

    .line 112
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;

    .line 116
    .end local v7           #value:Ljava/lang/Integer;
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    const/16 v2, 0x2714

    sget-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "/sys/class/power_supply/battery/batt_temp"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/BatteryWatcher;->isLower(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/BatteryWatcher;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 118
    return-void

    .line 114
    .restart local v7       #value:Ljava/lang/Integer;
    :cond_1
    const/16 v0, 0x64

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/component/BatteryWatcher;->BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;

    goto :goto_0

    .line 116
    .end local v7           #value:Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v3

    .line 117
    goto :goto_1
.end method

.method private isLower(ILjava/lang/String;)Z
    .locals 2
    .parameter "value"
    .parameter "filePath"

    .prologue
    .line 202
    invoke-static {p2}, Lcom/android/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 205
    .local v0, valueInFile:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->exit()V

    .line 133
    invoke-super {p0}, Lcom/android/camera/component/IntentReceiver;->deinitializeOverride()V

    .line 134
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    invoke-super {p0, p1}, Lcom/android/camera/component/IntentReceiver;->handleMessage(Landroid/os/Message;)V

    .line 156
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->isLowPower:Lcom/android/camera/property/Property;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x2713
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/camera/component/IntentReceiver;->initializeOverride()V

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/component/BatteryWatcher;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 169
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isLowBatteryTemperature:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 170
    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->isLowPower:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 173
    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->start()V

    .line 176
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BatteryWatcher$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BatteryWatcher$2;-><init>(Lcom/android/camera/component/BatteryWatcher;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 185
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BatteryWatcher$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BatteryWatcher$3;-><init>(Lcom/android/camera/component/BatteryWatcher;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 194
    return-void
.end method

.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Lcom/android/camera/WorkerThread;->sendMessage(I)Z

    .line 218
    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Lcom/android/camera/WorkerThread;->sendMessage(I)Z

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 233
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    return-void
.end method
