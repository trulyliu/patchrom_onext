.class public Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchTextWatcher;
.super Ljava/lang/Object;
.source "CarLocalMusicSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchTextWatcher;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 568
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 551
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const-wide/16 v3, 0x12c

    .line 555
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchTextWatcher;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    const/4 v2, 0x0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;J)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Ljava/lang/String;J)V

    .line 559
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchTextWatcher;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarSearch;->setClearIconVisibility(I)V

    .line 564
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchTextWatcher;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;J)V
    invoke-static {v1, v0, v3, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Ljava/lang/String;J)V

    .line 562
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchTextWatcher;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarSearch;->setClearIconVisibility(I)V

    goto :goto_0
.end method
