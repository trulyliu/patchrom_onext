.class Lcom/htc/music/AudioPreview$NonUiHandler$1;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/AudioPreview$NonUiHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/AudioPreview$NonUiHandler;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview$NonUiHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1678
    iput-object p1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$200(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1682
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$2200(Lcom/htc/music/AudioPreview;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$2200(Lcom/htc/music/AudioPreview;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$2202(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Ljava/lang/String;

    .line 1684
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$200(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$2200(Lcom/htc/music/AudioPreview;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$2300(Lcom/htc/music/AudioPreview;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1688
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$2300(Lcom/htc/music/AudioPreview;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$2302(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Ljava/lang/String;

    .line 1689
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$2300(Lcom/htc/music/AudioPreview;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1693
    :cond_1
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$200(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1694
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$200(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060073

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1697
    :cond_2
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1698
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1703
    :goto_0
    const-string v0, "<unknown>"

    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1705
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1707
    :cond_3
    return-void

    .line 1700
    :cond_4
    iget-object v0, p0, Lcom/htc/music/AudioPreview$NonUiHandler$1;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
