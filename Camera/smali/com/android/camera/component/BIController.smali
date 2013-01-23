.class public Lcom/android/camera/component/BIController;
.super Lcom/android/camera/component/UIComponent;
.source "BIController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "BI Controller"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "cameraActivity"

    .prologue
    const/4 v1, 0x0

    .line 31
    const-string v0, "BIController"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 32
    return-void
.end method

.method private setAlarm()V
    .locals 24

    .prologue
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BIController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v11

    .line 49
    .local v11, activity:Lcom/android/camera/HTCCamera;
    const-string v3, "alarm"

    invoke-virtual {v11, v3}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 50
    .local v2, alarmMgr:Landroid/app/AlarmManager;
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.htc.camera.MEDIACOUNT"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v16, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x800

    move-object/from16 v0, v16

    invoke-static {v11, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 55
    .local v8, pIntent:Landroid/app/PendingIntent;
    new-instance v12, Ljava/util/GregorianCalendar;

    invoke-direct {v12}, Ljava/util/GregorianCalendar;-><init>()V

    .line 56
    .local v12, cal:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 57
    .local v15, hour24:I
    const/16 v3, 0xc

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 58
    .local v17, min:I
    const/16 v3, 0xd

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v21

    .line 59
    .local v21, sec:I
    const/16 v3, 0xe

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 61
    .local v18, ms:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 62
    .local v13, currentTime:J
    const-wide/32 v6, 0x4ef6d80

    .line 63
    .local v6, period:J
    const-wide/32 v9, 0x5265c00

    .line 64
    .local v9, AdayTime:J
    mul-int/lit16 v3, v15, 0xe10

    mul-int/lit8 v4, v17, 0x3c

    add-int/2addr v3, v4

    add-int v3, v3, v21

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    sub-long v3, v9, v3

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v3, v3, v22

    const-wide/32 v22, 0x493e0

    sub-long v19, v3, v22

    .line 67
    .local v19, remainTime:J
    const/4 v3, 0x1

    add-long v4, v13, v19

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "set alarm"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 43
    invoke-direct {p0}, Lcom/android/camera/component/BIController;->setAlarm()V

    .line 44
    return-void
.end method
