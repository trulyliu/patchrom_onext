.class Lcom/htc/music/lyrics/widget/LyricsView$1;
.super Ljava/lang/Object;
.source "LyricsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/lyrics/widget/LyricsView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/lyrics/widget/LyricsView;


# direct methods
.method constructor <init>(Lcom/htc/music/lyrics/widget/LyricsView;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/music/lyrics/widget/LyricsView$1;->this$0:Lcom/htc/music/lyrics/widget/LyricsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method
