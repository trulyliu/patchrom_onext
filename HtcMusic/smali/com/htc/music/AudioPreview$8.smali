.class Lcom/htc/music/AudioPreview$8;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/AudioPreview;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #calls: Lcom/htc/music/AudioPreview;->stopPlayback()V
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$2000(Lcom/htc/music/AudioPreview;)V

    .line 1201
    iget-object v0, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview;->finish()V

    .line 1202
    return-void
.end method
