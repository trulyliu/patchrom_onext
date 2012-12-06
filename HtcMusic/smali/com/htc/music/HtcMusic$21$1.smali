.class Lcom/htc/music/HtcMusic$21$1;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic$21;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/HtcMusic$21;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic$21;)V
    .locals 0
    .parameter

    .prologue
    .line 3937
    iput-object p1, p0, Lcom/htc/music/HtcMusic$21$1;->this$1:Lcom/htc/music/HtcMusic$21;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3940
    iget-object v0, p0, Lcom/htc/music/HtcMusic$21$1;->this$1:Lcom/htc/music/HtcMusic$21;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$21;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v0}, Lcom/htc/music/HtcMusic;->finish()V

    .line 3941
    return-void
.end method
