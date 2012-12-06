.class Lcom/htc/music/HtcMusic$26;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 4895
    iput-object p1, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4898
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4899
    packed-switch p2, :pswitch_data_0

    .line 4910
    :goto_0
    return-void

    .line 4901
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x2

    #calls: Lcom/htc/music/HtcMusic;->setRepeatMode(I)V
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$7100(Lcom/htc/music/HtcMusic;I)V

    goto :goto_0

    .line 4904
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/HtcMusic;->setRepeatMode(I)V
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$7100(Lcom/htc/music/HtcMusic;I)V

    goto :goto_0

    .line 4907
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic$26;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/HtcMusic;->setRepeatMode(I)V
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$7100(Lcom/htc/music/HtcMusic;I)V

    goto :goto_0

    .line 4899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
