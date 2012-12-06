.class final Lcom/htc/music/widget/SharedAdapter$2;
.super Ljava/lang/Object;
.source "SharedAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/htc/music/widget/SharedAdapter;

.field final synthetic val$innerActivity:Landroid/app/Activity;

.field final synthetic val$innerAudioPath:Ljava/lang/String;

.field final synthetic val$innerMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/SharedAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    iput-object p2, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerMimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 327
    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {v5, p2}, Lcom/htc/music/widget/SharedAdapter;->updateRecord(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 330
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {v5, v2}, Lcom/htc/music/widget/SharedAdapter;->intentForPosition(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 332
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 335
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.htc.intent.action.SEND_MSG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 336
    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 337
    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v7, :cond_3

    .line 338
    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerMimeType:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    :goto_0
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 375
    const-string v5, "[ShareAdapter]"

    const-string v6, "choose_listener..onClick()..Package is null... "

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerActivity:Landroid/app/Activity;

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 382
    :cond_1
    if-eqz p1, :cond_2

    .line 383
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 385
    :cond_2
    return-void

    .line 340
    :cond_3
    const-string v5, "AddFile"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 341
    .local v0, addFile:Z
    if-eqz v0, :cond_4

    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, audioPath:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 345
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 347
    .end local v1           #audioPath:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_4
    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerMimeType:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 351
    .end local v0           #addFile:Z
    :cond_5
    const-string v5, "[ShareAdapter]"

    const-string v6, "innerAudioPath is null!!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_6
    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerMimeType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 356
    iget-object v5, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v7, :cond_7

    .line 357
    const-string v5, "android.intent.extra.STREAM"

    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 359
    :cond_7
    const-string v5, "AddFile"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 360
    .restart local v0       #addFile:Z
    if-eqz v0, :cond_8

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .restart local v1       #audioPath:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 363
    .restart local v4       #uri:Landroid/net/Uri;
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 365
    .end local v1           #audioPath:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_8
    const-string v5, "android.intent.extra.STREAM"

    iget-object v6, p0, Lcom/htc/music/widget/SharedAdapter$2;->val$innerAudioPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 369
    .end local v0           #addFile:Z
    :cond_9
    const-string v5, "[ShareAdapter]"

    const-string v6, "innerMimeType is null!!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
