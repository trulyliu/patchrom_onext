.class public Landroid/media/AudioService$HtcBeatsEffection;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HtcBeatsEffection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$HtcBeatsEffection$HtcBeatsNotifyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BEATS_NOTIFICATION:I = 0x64

.field private static final BEATS_PERMISSION:Ljava/lang/String; = "com.android.beats.permission.UPDATE_NOTIFICATION"

.field private static final INTENT_BEATS_NOTIFY_OFF:Ljava/lang/String; = "com.htc.intent.action.BEATS_NOTIFICATION_OFF"

.field private static final INTENT_BEATS_NOTIFY_ON:Ljava/lang/String; = "com.htc.intent.action.BEATS_NOTIFICATION_ON"

.field private static final NOTIFY_STATE_NONE:I = 0x0

.field private static final NOTIFY_STATE_OFF:I = 0x2

.field private static final NOTIFY_STATE_ON:I = 0x1

.field private static final NOTIFY_STATE_ON_PILL:I = 0x3


# instance fields
.field private mBeatsEnable:Z

.field private final mBeatsReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsUpdate:Z

.field private mNotificationOn:Z

.field private mState:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3810
    iput-object p1, p0, Landroid/media/AudioService$HtcBeatsEffection;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3801
    new-instance v1, Landroid/media/AudioService$HtcBeatsEffection$HtcBeatsNotifyBroadcastReceiver;

    invoke-direct {v1, p0}, Landroid/media/AudioService$HtcBeatsEffection$HtcBeatsNotifyBroadcastReceiver;-><init>(Landroid/media/AudioService$HtcBeatsEffection;)V

    iput-object v1, p0, Landroid/media/AudioService$HtcBeatsEffection;->mBeatsReceiver:Landroid/content/BroadcastReceiver;

    .line 3807
    iput v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mState:I

    .line 3811
    iput-object p2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    .line 3812
    iput-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mNotificationOn:Z

    .line 3813
    iput-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mBeatsEnable:Z

    .line 3814
    iput-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mIsUpdate:Z

    .line 3815
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3816
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.BEATS_NOTIFICATION_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3817
    const-string v1, "com.htc.intent.action.BEATS_NOTIFICATION_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3818
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffection;->mBeatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.android.beats.permission.UPDATE_NOTIFICATION"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3819
    return-void
.end method

.method private getDisableBeatsNotification()Landroid/app/Notification;
    .locals 13

    .prologue
    const v12, 0x4020064

    const v9, 0x2040249

    const v11, 0x4110028

    const/4 v10, 0x0

    .line 3924
    iget-object v6, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v4, v6, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 3925
    .local v4, skinPackage:Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 3926
    .local v2, n:Landroid/app/Notification;
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 3927
    const/4 v6, 0x5

    iput v6, v2, Landroid/app/Notification;->priority:I

    .line 3928
    iget-boolean v6, p0, Landroid/media/AudioService$HtcBeatsEffection;->mIsUpdate:Z

    if-eqz v6, :cond_1

    .line 3929
    iget-object v6, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3934
    :goto_0
    iput v12, v2, Landroid/app/Notification;->icon:I

    .line 3936
    new-instance v6, Landroid/widget/RemoteViews;

    const-string v7, "com.htc.framework.internal"

    const v8, 0x4030018

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3937
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x4110026

    iget-object v8, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3938
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x1020006

    invoke-virtual {v6, v7, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 3939
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x4110027

    iget-object v8, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2040269

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3940
    const-string v6, "default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v4, :cond_2

    .line 3942
    :cond_0
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x4020054

    invoke-virtual {v6, v11, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 3953
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.BEATS_NOTIFICATION_ON"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3954
    .local v1, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3955
    iget-object v6, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3958
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.BEATS_NOTIFICATION_ON"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3959
    .local v0, bi:Landroid/content/Intent;
    iget-object v6, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3960
    .local v3, pbi:Landroid/app/PendingIntent;
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 3961
    iget v6, v2, Landroid/app/Notification;->flags:I

    const/high16 v7, -0x8000

    or-int/2addr v6, v7

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 3962
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v11, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3964
    return-object v2

    .line 3931
    .end local v0           #bi:Landroid/content/Intent;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #pbi:Landroid/app/PendingIntent;
    :cond_1
    const/4 v6, 0x0

    iput-object v6, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 3947
    :cond_2
    iget-object v6, p0, Landroid/media/AudioService$HtcBeatsEffection;->this$0:Landroid/media/AudioService;

    iget-object v7, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    #calls: Landroid/media/AudioService;->getSkinContext(Landroid/content/Context;)Landroid/content/Context;
    invoke-static {v6, v7}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 3948
    .local v5, wrappedContext:Landroid/content/Context;
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "notification_checkbox_off"

    const-string v9, "drawable"

    invoke-virtual {v7, v8, v9, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v11, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private getEnableBeatsNotification()Landroid/app/Notification;
    .locals 13

    .prologue
    const v12, 0x4020065

    const v9, 0x2040249

    const v11, 0x4110028

    const/4 v10, 0x0

    .line 3882
    iget-object v6, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v4, v6, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 3883
    .local v4, skinPackage:Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 3884
    .local v2, n:Landroid/app/Notification;
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 3885
    const/4 v6, 0x5

    iput v6, v2, Landroid/app/Notification;->priority:I

    .line 3886
    iget-boolean v6, p0, Landroid/media/AudioService$HtcBeatsEffection;->mIsUpdate:Z

    if-eqz v6, :cond_1

    .line 3887
    iget-object v6, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3892
    :goto_0
    iput v12, v2, Landroid/app/Notification;->icon:I

    .line 3894
    new-instance v6, Landroid/widget/RemoteViews;

    const-string v7, "com.htc.framework.internal"

    const v8, 0x4030018

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3895
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x4110026

    iget-object v8, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3896
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x4110027

    iget-object v8, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20402be

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3897
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x1020006

    invoke-virtual {v6, v7, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 3898
    const-string v6, "default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v4, :cond_2

    .line 3900
    :cond_0
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x4020055

    invoke-virtual {v6, v11, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 3909
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.BEATS_NOTIFICATION_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3910
    .local v1, i:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3911
    iget-object v6, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3914
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.BEATS_NOTIFICATION_OFF"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3915
    .local v0, bi:Landroid/content/Intent;
    iget-object v6, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3916
    .local v3, pbi:Landroid/app/PendingIntent;
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 3917
    iget v6, v2, Landroid/app/Notification;->flags:I

    const/high16 v7, -0x8000

    or-int/2addr v6, v7

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 3918
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v11, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3920
    return-object v2

    .line 3889
    .end local v0           #bi:Landroid/content/Intent;
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #pbi:Landroid/app/PendingIntent;
    :cond_1
    const/4 v6, 0x0

    iput-object v6, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 3903
    :cond_2
    iget-object v6, p0, Landroid/media/AudioService$HtcBeatsEffection;->this$0:Landroid/media/AudioService;

    iget-object v7, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    #calls: Landroid/media/AudioService;->getSkinContext(Landroid/content/Context;)Landroid/content/Context;
    invoke-static {v6, v7}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 3904
    .local v5, wrappedContext:Landroid/content/Context;
    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "notification_checkbox_on"

    const-string v9, "drawable"

    invoke-virtual {v7, v8, v9, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v11, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private getPillHeadsetNotification()Landroid/app/Notification;
    .locals 10

    .prologue
    const v9, 0x4020065

    const v6, 0x2040249

    const/4 v8, 0x0

    .line 3970
    iget-object v3, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 3971
    .local v2, skinPackage:Ljava/lang/String;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 3972
    .local v1, n:Landroid/app/Notification;
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Landroid/app/Notification;->when:J

    .line 3973
    const/4 v3, 0x5

    iput v3, v1, Landroid/app/Notification;->priority:I

    .line 3974
    iget-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffection;->mIsUpdate:Z

    if-eqz v3, :cond_0

    .line 3975
    iget-object v3, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3981
    :goto_0
    iput v9, v1, Landroid/app/Notification;->icon:I

    .line 3983
    new-instance v3, Landroid/widget/RemoteViews;

    const-string v4, "com.htc.framework.internal"

    const v5, 0x4030018

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3984
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x4110026

    iget-object v5, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3985
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x4110027

    iget-object v5, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x204039a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3986
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x1020006

    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 3988
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3989
    .local v0, i:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3990
    iget-object v3, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3991
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x4110028

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3993
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 3994
    iget v3, v1, Landroid/app/Notification;->flags:I

    const/high16 v4, -0x8000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 3996
    return-object v1

    .line 3977
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private shouldChangeNotification(I)Z
    .locals 3
    .parameter "nextState"

    .prologue
    .line 3822
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldChangeNotification: mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , nextState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    iget v0, p0, Landroid/media/AudioService$HtcBeatsEffection;->mState:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableBeats()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 3842
    invoke-direct {p0, v4}, Landroid/media/AudioService$HtcBeatsEffection;->shouldChangeNotification(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3843
    const-string v2, "AudioService"

    const-string v3, "HtcBeatsEffection: disableBeats notification!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    iget v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 3845
    invoke-virtual {p0}, Landroid/media/AudioService$HtcBeatsEffection;->removeNotification()V

    .line 3847
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 3848
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffection;->getDisableBeatsNotification()Landroid/app/Notification;

    move-result-object v0

    .line 3850
    .local v0, n:Landroid/app/Notification;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3851
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mIsUpdate:Z

    .line 3852
    iput v4, p0, Landroid/media/AudioService$HtcBeatsEffection;->mState:I

    .line 3854
    .end local v0           #n:Landroid/app/Notification;
    .end local v1           #nm:Landroid/app/NotificationManager;
    :cond_1
    return-void
.end method

.method public enableBeats()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3827
    invoke-direct {p0, v4}, Landroid/media/AudioService$HtcBeatsEffection;->shouldChangeNotification(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3828
    const-string v2, "AudioService"

    const-string v3, "HtcBeatsEffection: enableBeats notification!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    iget v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 3830
    invoke-virtual {p0}, Landroid/media/AudioService$HtcBeatsEffection;->removeNotification()V

    .line 3832
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 3833
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffection;->getEnableBeatsNotification()Landroid/app/Notification;

    move-result-object v0

    .line 3835
    .local v0, n:Landroid/app/Notification;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3836
    iput-boolean v4, p0, Landroid/media/AudioService$HtcBeatsEffection;->mIsUpdate:Z

    .line 3837
    iput v4, p0, Landroid/media/AudioService$HtcBeatsEffection;->mState:I

    .line 3839
    .end local v0           #n:Landroid/app/Notification;
    .end local v1           #nm:Landroid/app/NotificationManager;
    :cond_1
    return-void
.end method

.method public enablePillBeats()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 3867
    invoke-direct {p0, v5}, Landroid/media/AudioService$HtcBeatsEffection;->shouldChangeNotification(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3868
    const-string v2, "AudioService"

    const-string v3, "HtcBeatsEffection: enablePillBeats notification!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    iget v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mState:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3870
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService$HtcBeatsEffection;->removeNotification()V

    .line 3872
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 3873
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-direct {p0}, Landroid/media/AudioService$HtcBeatsEffection;->getPillHeadsetNotification()Landroid/app/Notification;

    move-result-object v0

    .line 3875
    .local v0, n:Landroid/app/Notification;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3876
    iput-boolean v4, p0, Landroid/media/AudioService$HtcBeatsEffection;->mIsUpdate:Z

    .line 3877
    iput v5, p0, Landroid/media/AudioService$HtcBeatsEffection;->mState:I

    .line 3879
    .end local v0           #n:Landroid/app/Notification;
    .end local v1           #nm:Landroid/app/NotificationManager;
    :cond_2
    return-void
.end method

.method public removeNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3857
    invoke-direct {p0, v3}, Landroid/media/AudioService$HtcBeatsEffection;->shouldChangeNotification(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3858
    const-string v1, "AudioService"

    const-string v2, "HtcBeatsEffection: remove Beats notification!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    iget-object v1, p0, Landroid/media/AudioService$HtcBeatsEffection;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3860
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3861
    iput-boolean v3, p0, Landroid/media/AudioService$HtcBeatsEffection;->mIsUpdate:Z

    .line 3862
    iput v3, p0, Landroid/media/AudioService$HtcBeatsEffection;->mState:I

    .line 3864
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method
