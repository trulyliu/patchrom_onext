.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$4;
.super Ljava/lang/Object;
.source "LocalMusicSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$4;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hideSoftInput()V
    .locals 4

    .prologue
    .line 416
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$4;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 417
    .local v1, service:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 418
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$4;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, currentFocus:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 423
    .end local v0           #currentFocus:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 409
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$4;->hideSoftInput()V

    .line 412
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
