.class Lcom/htc/music/HtcMusic$EditTextWatcher;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditTextWatcher"
.end annotation


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 5236
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5237
    iput-object p1, p0, Lcom/htc/music/HtcMusic$EditTextWatcher;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 5238
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 5242
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 5247
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5251
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 5252
    .local v1, name:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v0, v4

    .line 5253
    .local v0, empty:Z
    :goto_1
    iget-object v5, p0, Lcom/htc/music/HtcMusic$EditTextWatcher;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 5254
    .local v2, save:Landroid/widget/Button;
    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5255
    return-void

    .line 5251
    .end local v0           #empty:Z
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #save:Landroid/widget/Button;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local v1       #name:Ljava/lang/String;
    :cond_2
    move v0, v3

    .line 5252
    goto :goto_1

    .restart local v0       #empty:Z
    .restart local v2       #save:Landroid/widget/Button;
    :cond_3
    move v4, v3

    .line 5254
    goto :goto_2
.end method
