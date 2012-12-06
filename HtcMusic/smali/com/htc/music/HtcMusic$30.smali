.class Lcom/htc/music/HtcMusic$30;
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
    .line 5037
    iput-object p1, p0, Lcom/htc/music/HtcMusic$30;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5039
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5041
    packed-switch p2, :pswitch_data_0

    .line 5050
    :goto_0
    return-void

    .line 5043
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic$30;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$30;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$4000(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic$30;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$4300(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$30;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$4400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/music/HtcMusic;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/HtcMusic;->access$7300(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5047
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic$30;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->shareMusicFile()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$7400(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    .line 5041
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
