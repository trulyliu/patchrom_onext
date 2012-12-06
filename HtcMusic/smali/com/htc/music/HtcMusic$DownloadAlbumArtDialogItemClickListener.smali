.class Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadAlbumArtDialogItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 6258
    iput-object p1, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v5, 0x0

    const/16 v6, 0xd

    .line 6263
    packed-switch p3, :pswitch_data_0

    .line 6314
    :cond_0
    :goto_0
    return-void

    .line 6265
    :pswitch_0
    const v4, 0x7f07004e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcCheckBox;

    .line 6267
    .local v0, checkBox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v0, :cond_0

    .line 6268
    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 6269
    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6270
    iget-object v4, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->startAutoDownloadAlbum()V
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$8800(Lcom/htc/music/HtcMusic;)V

    .line 6271
    iget-object v4, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v4, v6}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 6268
    goto :goto_1

    .line 6273
    :cond_2
    iget-object v4, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->autoUpdateAlbumArt(I)V
    invoke-static {v4, v5}, Lcom/htc/music/HtcMusic;->access$8900(Lcom/htc/music/HtcMusic;I)V

    .line 6274
    iget-object v4, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->stopDownloadAlbumArtService()V
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$9000(Lcom/htc/music/HtcMusic;)V

    .line 6275
    iget-object v4, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v4, v6}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    goto :goto_0

    .line 6282
    .end local v0           #checkBox:Lcom/htc/widget/HtcCheckBox;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->startUpdateAllAlbum()V
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$9100(Lcom/htc/music/HtcMusic;)V

    .line 6283
    iget-object v4, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v4, v6}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    goto :goto_0

    .line 6288
    :pswitch_2
    const v4, 0x7f070020

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 6290
    .local v3, updateCurrentView:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v3, :cond_5

    .line 6291
    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryText()Ljava/lang/String;

    move-result-object v2

    .line 6292
    .local v2, updateCurrentText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6293
    iget-object v4, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v4}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6295
    .local v1, resetCurrent:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6296
    iget-object v4, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->resetCurrentAlbumArt()V
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$9200(Lcom/htc/music/HtcMusic;)V

    .line 6297
    iget-object v4, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v4, v6}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    goto :goto_0

    .line 6299
    :cond_3
    iget-object v4, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateCurrentAlbum()V
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$9300(Lcom/htc/music/HtcMusic;)V

    .line 6300
    iget-object v4, p0, Lcom/htc/music/HtcMusic$DownloadAlbumArtDialogItemClickListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v4, v6}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    goto/16 :goto_0

    .line 6303
    .end local v1           #resetCurrent:Ljava/lang/String;
    :cond_4
    const-string v4, "[HtcMusic]"

    const-string v5, "update current text is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6306
    .end local v2           #updateCurrentText:Ljava/lang/String;
    :cond_5
    const-string v4, "[HtcMusic]"

    const-string v5, "update current text view is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
