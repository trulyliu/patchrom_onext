.class public Lcom/htc/music/online/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# static fields
.field public static final DIALOG_CHECK_LOGIN:I = 0xb

.field public static final DIALOG_CHECK_NO_NETWORK:I = 0x1

.field public static final DIALOG_CONNECTION_TIMEOUT:I = 0x2

.field public static final DIALOG_DATA_FEE:I = 0x3

.field public static final DIALOG_INVALID_TOKEN:I = 0x4

.field public static final DIALOG_RESTORE_APP:I = 0xc

.field public static final DIALOG_WAPNETWORK:I = 0xd

.field private static final TAG:Ljava/lang/String; = "[DialogManager]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialog(Landroid/app/Activity;I)Lcom/htc/widget/HtcAlertDialog;
    .locals 3
    .parameter "activity"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    const-string v1, "[DialogManager]"

    const-string v2, "[getDialog(Activity, int)] activity cannot be null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-object v0

    .line 28
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 30
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x2040278

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20402ef

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040257

    new-instance v2, Lcom/htc/music/online/DialogManager$2;

    invoke-direct {v2, p0}, Lcom/htc/music/online/DialogManager$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x204025e

    new-instance v2, Lcom/htc/music/online/DialogManager$1;

    invoke-direct {v2}, Lcom/htc/music/online/DialogManager$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog;
    .locals 4
    .parameter "activity"
    .parameter "type"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 80
    if-nez p0, :cond_0

    .line 81
    const-string v2, "[DialogManager]"

    const-string v3, "[getDialog(Activity, int, OnClickListener)] activity cannot be null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-object v0

    .line 84
    :cond_0
    if-nez p2, :cond_1

    .line 85
    const-string v2, "[DialogManager]"

    const-string v3, "[getDialog(Activity, int, OnClickListener)] listener cannot be null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .local v1, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x204009b

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 121
    const v2, 0x20401f2

    invoke-virtual {v1, v2, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 122
    const v2, 0x20401f3

    invoke-virtual {v1, v2, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 123
    const v2, 0x204009c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 124
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 125
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public static getDialog(Landroid/app/Activity;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog;
    .locals 3
    .parameter "activity"
    .parameter "type"
    .parameter "title"
    .parameter "positiveListener"

    .prologue
    const/4 v2, 0x0

    .line 132
    if-nez p0, :cond_1

    .line 133
    const-string v0, "[DialogManager]"

    const-string v1, "[getDialog(Activity, int, String, OnClickListener)] activity cannot be null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return-object v2

    .line 136
    :cond_1
    if-nez p2, :cond_2

    .line 137
    const-string v0, "[DialogManager]"

    const-string v1, "[getDialog(Activity, int, String, OnClickListener)] title cannot be null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    if-nez p3, :cond_0

    .line 141
    const-string v0, "[DialogManager]"

    const-string v1, "[getDialog(Activity, int, String, OnClickListener)] positiveListener cannot be null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
