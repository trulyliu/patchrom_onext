.class public Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;
.super Ljava/lang/Object;
.source "EditPlaylistActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1444
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1464
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1447
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1450
    if-nez p1, :cond_4

    const/4 v3, 0x0

    .line 1451
    .local v3, name:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    move v1, v6

    .line 1452
    .local v1, empty:Z
    :goto_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    const v8, 0x7f07001c

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1453
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    iget-object v7, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I
    invoke-static {v7, v3}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1400(Lcom/htc/music/browserlayer/EditPlaylistActivity;Ljava/lang/String;)I

    move-result v2

    .line 1454
    .local v2, id:I
    const/4 v4, 0x0

    .line 1455
    .local v4, theSameName:Z
    iget-object v7, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1500(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1500(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v2, :cond_1

    .line 1457
    const/4 v4, 0x1

    .line 1460
    :cond_1
    if-nez v1, :cond_2

    if-ltz v2, :cond_3

    :cond_2
    if-eqz v4, :cond_6

    :cond_3
    :goto_2
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1461
    return-void

    .line 1450
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #empty:Z
    .end local v2           #id:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #theSameName:Z
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .restart local v3       #name:Ljava/lang/String;
    :cond_5
    move v1, v5

    .line 1451
    goto :goto_1

    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    .restart local v1       #empty:Z
    .restart local v2       #id:I
    .restart local v4       #theSameName:Z
    :cond_6
    move v6, v5

    .line 1460
    goto :goto_2
.end method
