.class public Lcom/htc/music/widget/SharedAdapter;
.super Landroid/widget/BaseAdapter;
.source "SharedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    }
.end annotation


# static fields
.field private static final AddFilePrefix:Ljava/lang/String; = "AddFile"

.field private static final GMAIL_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gm"

.field public static final SHARE_NORMAL_FILE:I = 0x0

.field public static final SHARE_SD_DRM:I = 0x1

.field private static final SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field private static final TAG:Ljava/lang/String; = "[ShareAdapter]"

.field private static mIsShowIcon:Z

.field private static mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

.field private mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mResInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/music/widget/SharedAdapter;->mIsShowIcon:Z

    .line 431
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/widget/SharedAdapter;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "applicationContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, intent:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    .line 56
    iput-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfos:Ljava/util/List;

    .line 554
    iput-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mIntents:Ljava/util/List;

    .line 105
    iput-object p2, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/htc/widget/HtcShareViaMultipleAdapter;

    invoke-direct {v0, p1, p2}, Lcom/htc/widget/HtcShareViaMultipleAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    .line 107
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/SharedAdapter;->addIntent(Ljava/util/List;)V

    .line 108
    invoke-virtual {p0}, Lcom/htc/music/widget/SharedAdapter;->generateResoleInfo()V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter "applicationContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, intent:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .local p2, allows:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, excludes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    .line 56
    iput-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfos:Ljava/util/List;

    .line 554
    iput-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mIntents:Ljava/util/List;

    .line 113
    iput-object p4, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/htc/widget/HtcShareViaMultipleAdapter;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcShareViaMultipleAdapter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    .line 116
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/SharedAdapter;->addIntent(Ljava/util/List;)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/music/widget/SharedAdapter;->generateResoleInfo()V

    .line 118
    return-void
.end method

.method static synthetic access$000()Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/music/widget/SharedAdapter;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-object p0, Lcom/htc/music/widget/SharedAdapter;->mNoNetworkDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p0
.end method

.method public static getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;
    .locals 7
    .parameter "activity"
    .parameter "audioId"
    .parameter "audioPath"
    .parameter "type"
    .parameter "adapter"

    .prologue
    .line 319
    invoke-static {p0, p1}, Lcom/htc/music/widget/SharedAdapter;->getTrackMimeType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, mimeType:Ljava/lang/String;
    move-object v3, p2

    .line 322
    .local v3, innerAudioPath:Ljava/lang/String;
    move-object v4, v5

    .line 323
    .local v4, innerMimeType:Ljava/lang/String;
    move-object v2, p0

    .line 325
    .local v2, innerActivity:Landroid/app/Activity;
    new-instance v0, Lcom/htc/music/widget/SharedAdapter$2;

    invoke-direct {v0, p4, v3, v4, v2}, Lcom/htc/music/widget/SharedAdapter$2;-><init>(Lcom/htc/music/widget/SharedAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 389
    .local v0, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    invoke-virtual {p4}, Lcom/htc/music/widget/SharedAdapter;->getAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Lcom/htc/widget/HtcShareViaDialogOnClickListener;-><init>(Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 392
    .local v1, clickListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;
    return-object v1
.end method

.method public static getShareDialogClickListener(Landroid/app/Activity;Landroid/os/Bundle;Lcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;
    .locals 4
    .parameter "activity"
    .parameter "bundle"
    .parameter "adapter"

    .prologue
    .line 436
    move-object v2, p0

    .line 438
    .local v2, innerActivity:Landroid/app/Activity;
    new-instance v0, Lcom/htc/music/widget/SharedAdapter$4;

    invoke-direct {v0, p2, p1, v2}, Lcom/htc/music/widget/SharedAdapter$4;-><init>(Lcom/htc/music/widget/SharedAdapter;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 486
    .local v0, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    invoke-virtual {p2}, Lcom/htc/music/widget/SharedAdapter;->getAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/htc/widget/HtcShareViaDialogOnClickListener;-><init>(Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 489
    .local v1, clickListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;
    return-object v1
.end method

.method public static getShareDialogClickListener(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;
    .locals 5
    .parameter "activity"
    .parameter "text"
    .parameter "adapter"

    .prologue
    .line 283
    move-object v2, p0

    .line 284
    .local v2, innerActivity:Landroid/app/Activity;
    move-object v3, p1

    .line 286
    .local v3, innerText:Ljava/lang/String;
    new-instance v0, Lcom/htc/music/widget/SharedAdapter$1;

    invoke-direct {v0, p2, v3, v2}, Lcom/htc/music/widget/SharedAdapter$1;-><init>(Lcom/htc/music/widget/SharedAdapter;Ljava/lang/String;Landroid/app/Activity;)V

    .line 311
    .local v0, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    invoke-virtual {p2}, Lcom/htc/music/widget/SharedAdapter;->getAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/htc/widget/HtcShareViaDialogOnClickListener;-><init>(Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 314
    .local v1, clickListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;
    return-object v1
.end method

.method private static getTrackMimeType(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 255
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    .line 259
    .local v2, cols:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 261
    .local v7, mimeType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 263
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/ContentUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 265
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 267
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 270
    :cond_0
    if-eqz v6, :cond_1

    .line 271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_1
    const/4 v6, 0x0

    .line 275
    return-object v7

    .line 270
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_2
    const/4 v6, 0x0

    .line 270
    throw v0
.end method

.method public static shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;
    .locals 10
    .parameter "activity"
    .parameter "audioId"
    .parameter "audioPath"
    .parameter "type"

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 494
    if-gez p1, :cond_0

    .line 542
    :goto_0
    return-object v2

    .line 500
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/music/widget/SharedAdapter;->getTrackMimeType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 502
    .local v5, mimeType:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 503
    .local v6, queryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v3, 0x0

    .line 505
    .local v3, excludePackage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 506
    .local v7, request:Landroid/content/Intent;
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcMMSFlag:Z

    .line 512
    .local v4, isMmsNeeded:Z
    if-ne p3, v9, :cond_1

    .line 513
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #excludePackage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 514
    .restart local v3       #excludePackage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "com.google.android.gm"

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    const/4 v4, 0x0

    .line 518
    :cond_1
    if-eqz v4, :cond_2

    .line 520
    new-instance v7, Landroid/content/Intent;

    .end local v7           #request:Landroid/content/Intent;
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 521
    .restart local v7       #request:Landroid/content/Intent;
    const-string v8, "com.htc.intent.action.SEND_MSG"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_2
    new-instance v0, Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v6, v2, v3, v8}, Lcom/htc/music/widget/SharedAdapter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/content/Context;)V

    .line 528
    .local v0, adapter:Lcom/htc/music/widget/SharedAdapter;
    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 531
    .local v1, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x20400a1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/htc/music/widget/SharedAdapter;->getAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .local v2, dialog:Landroid/app/Dialog;
    move-object v8, v2

    .line 536
    check-cast v8, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    new-instance v9, Lcom/htc/music/widget/SharedAdapter$5;

    invoke-direct {v9, v1, v2}, Lcom/htc/music/widget/SharedAdapter$5;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public static shareIntentChooser(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "activity"
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 399
    if-nez p1, :cond_0

    .line 427
    :goto_0
    return-object v2

    .line 402
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v4, request:Landroid/content/Intent;
    const-string v5, "text/plain"

    .line 404
    .local v5, type:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 407
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .local v3, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v0, Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Lcom/htc/music/widget/SharedAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 412
    .local v0, adapter:Lcom/htc/music/widget/SharedAdapter;
    invoke-static {p0, p1, v0}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;Landroid/os/Bundle;Lcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 414
    .local v1, choose_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0600cd

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/music/widget/SharedAdapter;->getAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .local v2, dialog:Landroid/app/Dialog;
    move-object v6, v2

    .line 420
    check-cast v6, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    new-instance v7, Lcom/htc/music/widget/SharedAdapter$3;

    invoke-direct {v7, v1, v2}, Lcom/htc/music/widget/SharedAdapter$3;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addIntent(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, intent:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    if-eqz v0, :cond_0

    .line 557
    iput-object p1, p0, Lcom/htc/music/widget/SharedAdapter;->mIntents:Ljava/util/List;

    .line 559
    :cond_0
    return-void
.end method

.method public generateResoleInfo()V
    .locals 8

    .prologue
    .line 562
    iget-object v7, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    if-eqz v7, :cond_1

    .line 563
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfos:Ljava/util/List;

    .line 565
    iget-object v7, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 567
    .local v4, pm:Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/htc/music/widget/SharedAdapter;->mIntents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 568
    .local v5, request:Landroid/content/Intent;
    const/high16 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 569
    .local v6, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 570
    .local v3, item:Landroid/content/pm/ResolveInfo;
    new-instance v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;

    invoke-direct {v0, v3, v5}, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    .line 571
    .local v0, actInfo:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    iget-object v7, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfos:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 575
    .end local v0           #actInfo:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Landroid/content/pm/ResolveInfo;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #request:Landroid/content/Intent;
    .end local v6           #shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return-void
.end method

.method public getAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcShareViaMultipleAdapter;->getCount()I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 138
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v5, 0x8

    .line 143
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v4, p1, p2, p3}, Lcom/htc/widget/HtcShareViaMultipleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 176
    :goto_0
    return-object v3

    .line 145
    :cond_0
    const-string v4, "[ShareAdapter]"

    const-string v6, "mDataModel is null  when getView!! should never happen..."

    invoke-static {v4, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-nez p2, :cond_4

    .line 148
    sget-boolean v4, Lcom/htc/music/widget/SharedAdapter;->mIsShowIcon:Z

    if-nez v4, :cond_3

    .line 149
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f03000d

    invoke-static {v4, v6}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    .line 158
    .local v3, view:Landroid/view/View;
    :goto_1
    const/4 v2, 0x0

    .line 159
    .local v2, text:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v1, 0x0

    .line 161
    .local v1, icon:Lcom/htc/widget/HtcListItemColorIcon;
    const v4, 0x7f070020

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #text:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 162
    .restart local v2       #text:Lcom/htc/widget/HtcListItem2LineText;
    const v4, 0x7f070025

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #icon:Lcom/htc/widget/HtcListItemColorIcon;
    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    .line 164
    .restart local v1       #icon:Lcom/htc/widget/HtcListItemColorIcon;
    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 166
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;

    iget-object v0, v4, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 168
    .local v0, activity:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_2

    .line 169
    sget-boolean v4, Lcom/htc/music/widget/SharedAdapter;->mIsShowIcon:Z

    if-eqz v4, :cond_1

    .line 170
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_1
    sget-boolean v4, Lcom/htc/music/widget/SharedAdapter;->mIsShowIcon:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 174
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    .end local v0           #activity:Landroid/content/pm/ResolveInfo;
    .end local v1           #icon:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v2           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v3           #view:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f03000c

    invoke-static {v4, v6}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    .restart local v3       #view:Landroid/view/View;
    goto :goto_1

    .line 155
    .end local v3           #view:Landroid/view/View;
    :cond_4
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_1

    .restart local v0       #activity:Landroid/content/pm/ResolveInfo;
    .restart local v1       #icon:Lcom/htc/widget/HtcListItemColorIcon;
    .restart local v2       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_5
    move v4, v5

    .line 172
    goto :goto_2
.end method

.method public intentForPosition(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 9
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 180
    if-nez p1, :cond_1

    .line 181
    const-string v6, "[ShareAdapter]"

    const-string v7, "intentForPosition called with null info!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    return-object v4

    .line 185
    :cond_1
    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_2

    .line 186
    const-string v6, "[ShareAdapter]"

    const-string v7, "intentForPosition called with null info.activityInfo!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 190
    const-string v6, "[ShareAdapter]"

    const-string v7, "intentForPosition called with null info.activityInfo.name!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    if-eqz v6, :cond_0

    .line 198
    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfos:Ljava/util/List;

    if-nez v6, :cond_4

    .line 199
    invoke-virtual {p0}, Lcom/htc/music/widget/SharedAdapter;->generateResoleInfo()V

    .line 202
    :cond_4
    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfos:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 206
    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, chooseInfo:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mResInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;

    .line 210
    .local v0, activityInfo:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    if-eqz v0, :cond_5

    .line 211
    iget-object v6, v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_5

    .line 212
    iget-object v6, v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_5

    .line 213
    iget-object v6, v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 215
    iget-object v6, v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 216
    move-object v2, v0

    .line 221
    .end local v0           #activityInfo:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    :cond_6
    if-nez v2, :cond_7

    .line 222
    const-string v6, "[ShareAdapter]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find match Activity!! name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_7
    iget-object v4, v2, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->intent:Landroid/content/Intent;

    .line 227
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, v2, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 229
    .local v5, pm:Landroid/content/pm/PackageManager;
    iget-object v6, v2, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, apName:Ljava/lang/String;
    if-nez v1, :cond_8

    iget-object v6, v2, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 231
    :cond_8
    const-string v6, "[ShareAdapter]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package ap name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v6, "AddFile"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    const/high16 v6, 0x700

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public updateRecord(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter;->mDataModel:Lcom/htc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcShareViaMultipleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 551
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
