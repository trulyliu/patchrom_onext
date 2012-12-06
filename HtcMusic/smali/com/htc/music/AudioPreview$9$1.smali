.class Lcom/htc/music/AudioPreview$9$1;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/AudioPreview$9;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/AudioPreview$9;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/htc/music/AudioPreview$9$1;->this$1:Lcom/htc/music/AudioPreview$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/htc/music/AudioPreview$9$1;->this$1:Lcom/htc/music/AudioPreview$9;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v0, p1}, Lcom/htc/music/AudioPreview;->playPauseClicked(Landroid/view/View;)V

    .line 1236
    return-void
.end method
