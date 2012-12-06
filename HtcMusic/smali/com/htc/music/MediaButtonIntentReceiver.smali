.class public Lcom/htc/music/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static final ACTION_AVRCP_PANEL_OPERATION:Ljava/lang/String; = "com.htc.bluetooth.AVRCP_PANEL_OPERATION"

.field private static final AVRCP_BACKWARD:Ljava/lang/String; = "Backward"

.field private static final AVRCP_FFSTART:Ljava/lang/String; = "Fastforward_Start"

.field private static final AVRCP_FFSTOP:Ljava/lang/String; = "Fastforward_Stop"

.field private static final AVRCP_FORWARD:Ljava/lang/String; = "Forward"

.field private static final AVRCP_INTENT_OPERATION:Ljava/lang/String; = "android.bluetooth.avrcp.intent.PANEL_OP"

.field private static final AVRCP_PAUSE:Ljava/lang/String; = "Pause"

.field private static final AVRCP_PLAY:Ljava/lang/String; = "Play"

.field private static final AVRCP_RWSTART:Ljava/lang/String; = "Rewind_Start"

.field private static final AVRCP_RWSTOP:Ljava/lang/String; = "Rewind_Stop"

.field private static final AVRCP_STOP:Ljava/lang/String; = "Stop"

.field private static DEBUG:Z = false

.field private static final DOUBLE_CLICK_TIMEOUT:I = 0x1f4

.field private static DoubleClickDown:Z = false

.field private static FForRWIsDone:Z = false

.field private static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field private static final KEYCODE_MEDIA_NEXT:I = 0x57

.field private static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field private static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field private static final KEYCODE_MEDIA_REWIND:I = 0x59

.field private static final KEYCODE_MEDIA_STOP:I = 0x56

.field private static final LONG_PRESS_DELAY:I = 0x3e8

.field private static LongPressTimeout:Z = false

.field private static final MSG_HEADSETHOOK_DOUBLECLICK_TIMEOUT:I = 0x3

.field private static final MSG_HEADSETHOOK_LONGPRESS_TIMEOUT:I = 0x4

.field private static final MSG_LONGPRESS_TIMEOUT_FF:I = 0x1

.field private static final MSG_LONGPRESS_TIMEOUT_RW:I = 0x2

.field private static final MSG_RELEASE_WAKELOCK:I = 0x5

.field private static final TAG:Ljava/lang/String; = "[MediaButtonIntentReceiver]"

.field private static inFFOrRWMode:Z

.field private static isDownPressed:Z

.field private static isValidHookKeyDown:Z

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static prevPressDownTimestamp:J

.field private static previousIsDown:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->DoubleClickDown:Z

    .line 73
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    .line 75
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    .line 77
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 79
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 81
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 116
    sput-boolean v1, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    .line 117
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/music/MediaButtonIntentReceiver;->prevPressDownTimestamp:J

    .line 121
    new-instance v0, Lcom/htc/music/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/htc/music/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MediaButtonIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-boolean p0, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    return p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-boolean p0, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-boolean p0, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    return p0
.end method

.method static synthetic access$600()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private wakeForStarting()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 449
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 450
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 451
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 452
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 453
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    sget-object v1, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 455
    return-void
.end method


# virtual methods
.method handleAVRCPEvent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 458
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.bluetooth.AVRCP_PANEL_OPERATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 459
    const/4 v0, 0x0

    .line 502
    :goto_0
    return v0

    .line 461
    :cond_0
    const/4 v0, 0x1

    .line 462
    .local v0, bConsumed:Z
    const-string v3, "android.bluetooth.avrcp.intent.PANEL_OP"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, operation:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.htc.music.musicservicecommand"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v3, "Play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    const-string v3, "command"

    const-string v4, "togglepause"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 469
    invoke-direct {p0}, Lcom/htc/music/MediaButtonIntentReceiver;->wakeForStarting()V

    goto :goto_0

    .line 470
    :cond_1
    const-string v3, "Pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 471
    const-string v3, "command"

    const-string v4, "togglepause"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 474
    invoke-direct {p0}, Lcom/htc/music/MediaButtonIntentReceiver;->wakeForStarting()V

    goto :goto_0

    .line 475
    :cond_2
    const-string v3, "Forward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 476
    const-string v3, "command"

    const-string v4, "next"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v3, "forcePlay"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 479
    :cond_3
    const-string v3, "Backward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 480
    const-string v3, "command"

    const-string v4, "previous"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v3, "forcePlay"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 482
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 483
    :cond_4
    const-string v3, "Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 484
    const-string v3, "command"

    const-string v4, "stop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 486
    :cond_5
    const-string v3, "Fastforward_Start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 487
    const-string v3, "command"

    const-string v4, "ffstart"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 489
    :cond_6
    const-string v3, "Fastforward_Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 490
    const-string v3, "command"

    const-string v4, "ffstop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 492
    :cond_7
    const-string v3, "Rewind_Start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 493
    const-string v3, "command"

    const-string v4, "rwstart"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 495
    :cond_8
    const-string v3, "Rewind_Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 496
    const-string v3, "command"

    const-string v4, "rwstop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 499
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 183
    sput-object p1, Lcom/htc/music/MediaButtonIntentReceiver;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 200
    .local v11, intentAction:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "headsetowner"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, headsetOwner:Ljava/lang/String;
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 203
    const-string v14, "[MediaButtonIntentReceiver]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "> onReceive <, headsetOwner: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    if-eqz v9, :cond_2

    const-string v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "htcmusic"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 211
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "Get android.intent.action.BOOT_COMPLETED."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v14, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/MediaButtonIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaButtonIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    new-instance v15, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const-class v17, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 217
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lcom/htc/music/MediaButtonIntentReceiver;->handleAVRCPEvent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 218
    .local v2, bConsumed:Z
    if-nez v2, :cond_1

    .line 222
    const-string v14, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/view/KeyEvent;

    .line 224
    .local v6, event:Landroid/view/KeyEvent;
    if-eqz v6, :cond_1

    .line 228
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 229
    .local v12, keycode:I
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 230
    .local v1, action:I
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    .line 231
    .local v7, eventtime:J
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v13

    .line 233
    .local v13, repeatCount:I
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v14, :cond_8

    .line 235
    if-nez v1, :cond_12

    .line 236
    const-string v14, "[MediaButtonIntentReceiver]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Down Key,Key Code:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",inFForRWMode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",time:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", repeatCount: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_4
    :goto_1
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 242
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "MSG_LONGPRESS_TIMEOUT_FF in queue"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_5
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 244
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "MSG_LONGPRESS_TIMEOUT_RW in queue"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_6
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 246
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "MSG_HEADSETHOOK_DOUBLECLICK_TIMEOUT in queue"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_7
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 248
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "MSG_HEADSETHOOK_LONGPRESS_TIMEOUT in queue"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_8
    const/4 v3, 0x0

    .line 254
    .local v3, command:Ljava/lang/String;
    if-nez v1, :cond_19

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 265
    .local v4, currentTimestamp:J
    sget-wide v14, Lcom/htc/music/MediaButtonIntentReceiver;->prevPressDownTimestamp:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9

    sget-wide v14, Lcom/htc/music/MediaButtonIntentReceiver;->prevPressDownTimestamp:J

    sub-long v14, v4, v14

    const-wide/16 v16, 0x1f4

    cmp-long v14, v14, v16

    if-lez v14, :cond_9

    .line 266
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 267
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    .line 268
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 269
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    :cond_9
    const/16 v14, 0x4f

    if-eq v12, v14, :cond_a

    .line 273
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    .line 276
    :cond_a
    sput-wide v4, Lcom/htc/music/MediaButtonIntentReceiver;->prevPressDownTimestamp:J

    .line 278
    const/16 v14, 0x4f

    if-ne v12, v14, :cond_14

    .line 279
    if-nez v13, :cond_b

    .line 285
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    .line 287
    :cond_b
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DoubleClickDown:Z

    .line 288
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    .line 291
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    if-nez v14, :cond_c

    .line 292
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 294
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DoubleClickDown:Z

    .line 297
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    .line 315
    :cond_c
    :goto_2
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    if-nez v14, :cond_e

    .line 316
    const/16 v14, 0x57

    if-ne v12, v14, :cond_16

    .line 319
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v14, :cond_d

    .line 320
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "send MSG_LONGPRESS_TIMEOUT_FF"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_d
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 333
    :cond_e
    :goto_3
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 335
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    if-nez v14, :cond_f

    .line 336
    const/16 v14, 0x5a

    if-ne v12, v14, :cond_18

    .line 337
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 338
    const-string v3, "ffstart"

    .line 429
    .end local v4           #currentTimestamp:J
    :cond_f
    :goto_4
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v14, :cond_10

    .line 430
    const-string v14, "[MediaButtonIntentReceiver]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "command="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_10
    if-eqz v3, :cond_1

    .line 432
    new-instance v10, Landroid/content/Intent;

    const-class v14, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .local v10, i:Landroid/content/Intent;
    const-string v14, "com.htc.music.musicservicecommand"

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v14, "command"

    invoke-virtual {v10, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 439
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "Aborting an ordered broadcast intent..."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/MediaButtonIntentReceiver;->abortBroadcast()V

    .line 443
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaButtonIntentReceiver;->wakeForStarting()V

    goto/16 :goto_0

    .line 238
    .end local v3           #command:Ljava/lang/String;
    .end local v10           #i:Landroid/content/Intent;
    :cond_12
    const/4 v14, 0x1

    if-ne v1, v14, :cond_4

    .line 239
    const-string v14, "[MediaButtonIntentReceiver]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Up Key,Key Code:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",inFForRWMode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",time:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 304
    .restart local v3       #command:Ljava/lang/String;
    .restart local v4       #currentTimestamp:J
    :cond_13
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    .line 305
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x4

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 309
    :cond_14
    const/16 v14, 0x55

    if-eq v12, v14, :cond_15

    const/16 v14, 0x7e

    if-eq v12, v14, :cond_15

    const/16 v14, 0x7f

    if-ne v12, v14, :cond_c

    .line 312
    :cond_15
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto/16 :goto_2

    .line 323
    :cond_16
    const/16 v14, 0x58

    if-ne v12, v14, :cond_e

    .line 326
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DEBUG:Z

    if-eqz v14, :cond_17

    .line 327
    const-string v14, "[MediaButtonIntentReceiver]"

    const-string v15, "send MSG_LONGPRESS_TIMEOUT_RW"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_17
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x2

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 339
    :cond_18
    const/16 v14, 0x59

    if-ne v12, v14, :cond_f

    .line 340
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 341
    const-string v3, "rwstart"

    goto/16 :goto_4

    .line 345
    .end local v4           #currentTimestamp:J
    :cond_19
    const/4 v14, 0x1

    if-ne v1, v14, :cond_f

    .line 346
    sparse-switch v12, :sswitch_data_0

    .line 418
    :cond_1a
    :goto_5
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->previousIsDown:Z

    .line 419
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->FForRWIsDone:Z

    .line 420
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    goto/16 :goto_4

    .line 348
    :sswitch_0
    const-string v3, "stop"

    .line 349
    goto :goto_5

    .line 351
    :sswitch_1
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    if-eqz v14, :cond_1a

    .line 353
    const-string v3, "togglepause"

    .line 354
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto :goto_5

    .line 358
    :sswitch_2
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    if-eqz v14, :cond_1a

    .line 360
    const-string v3, "play"

    .line 361
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto :goto_5

    .line 365
    :sswitch_3
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    if-eqz v14, :cond_1a

    .line 367
    const-string v3, "pause"

    .line 368
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto :goto_5

    .line 374
    :sswitch_4
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    if-eqz v14, :cond_1b

    .line 376
    const-string v3, "ffstop"

    .line 377
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    goto :goto_5

    .line 379
    :cond_1b
    const-string v3, "next"

    .line 381
    goto :goto_5

    .line 385
    :sswitch_5
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    if-eqz v14, :cond_1c

    .line 387
    const-string v3, "rwstop"

    .line 388
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->inFFOrRWMode:Z

    goto :goto_5

    .line 390
    :cond_1c
    const-string v3, "previous"

    .line 392
    goto :goto_5

    .line 394
    :sswitch_6
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->DoubleClickDown:Z

    if-nez v14, :cond_1a

    .line 397
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->LongPressTimeout:Z

    if-nez v14, :cond_1a

    .line 399
    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    if-eqz v14, :cond_1d

    sget-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    if-eqz v14, :cond_1d

    .line 402
    sget-object v14, Lcom/htc/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x3

    const-wide/16 v16, 0x1f4

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/MediaButtonIntentReceiver;->wakeForStarting()V

    .line 406
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/music/MediaButtonIntentReceiver;->isDownPressed:Z

    goto :goto_5

    .line 408
    :cond_1d
    const-string v14, "[MediaButtonIntentReceiver]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not handle this time headset hook key. isValidHookKeyDown: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/htc/music/MediaButtonIntentReceiver;->isValidHookKeyDown:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 412
    :sswitch_7
    const-string v3, "ffstop"

    .line 413
    goto/16 :goto_5

    .line 415
    :sswitch_8
    const-string v3, "rwstop"

    goto/16 :goto_5

    .line 346
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_6
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x57 -> :sswitch_4
        0x58 -> :sswitch_5
        0x59 -> :sswitch_8
        0x5a -> :sswitch_7
        0x7e -> :sswitch_2
        0x7f -> :sswitch_3
    .end sparse-switch
.end method
