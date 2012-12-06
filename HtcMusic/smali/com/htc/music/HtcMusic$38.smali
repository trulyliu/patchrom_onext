.class Lcom/htc/music/HtcMusic$38;
.super Landroid/widget/ArrayAdapter;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createDownloadAlbumArtDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;I[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 6154
    iput-object p1, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 6233
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 6157
    const-string v5, "[HtcMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6158
    packed-switch p1, :pswitch_data_0

    .line 6228
    :goto_0
    return-object p2

    .line 6160
    :pswitch_0
    if-nez p2, :cond_1

    .line 6161
    iget-object v5, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 6163
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6172
    :cond_0
    :goto_1
    const v5, 0x7f070020

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 6174
    .local v0, autoUpdateTextView:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 6175
    const v5, 0x7f0600b8

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 6176
    const v5, 0x7f07004e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcCheckBox;

    .line 6178
    .local v1, checkBox:Lcom/htc/widget/HtcCheckBox;
    iget-object v5, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mIsAutoUpdate:Z
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$8600(Lcom/htc/music/HtcMusic;)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 6165
    .end local v0           #autoUpdateTextView:Lcom/htc/widget/HtcListItem2LineText;
    .end local v1           #checkBox:Lcom/htc/widget/HtcCheckBox;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6166
    .local v2, tag:Ljava/lang/Integer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    .line 6167
    :cond_2
    iget-object v5, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 6169
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 6182
    .end local v2           #tag:Ljava/lang/Integer;
    :pswitch_1
    if-nez p2, :cond_4

    .line 6183
    iget-object v5, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 6185
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6194
    :cond_3
    :goto_2
    const v5, 0x7f070020

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 6197
    .local v3, updateAllAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 6198
    const v5, 0x7f0600bb

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 6199
    iget-object v5, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mIsAutoUpdate:Z
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$8600(Lcom/htc/music/HtcMusic;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    goto/16 :goto_0

    .line 6187
    .end local v3           #updateAllAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6188
    .restart local v2       #tag:Ljava/lang/Integer;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 6189
    :cond_5
    iget-object v5, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 6191
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 6199
    .end local v2           #tag:Ljava/lang/Integer;
    .restart local v3       #updateAllAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 6202
    .end local v3           #updateAllAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    :pswitch_2
    if-nez p2, :cond_8

    .line 6203
    iget-object v5, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 6205
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6214
    :cond_7
    :goto_4
    const v5, 0x7f070020

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 6216
    .local v4, updateCurrentTextView:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 6217
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 6218
    iget-object v5, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mIsRevertCurrent:Z
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$8700(Lcom/htc/music/HtcMusic;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 6219
    const v5, 0x7f0600b9

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto/16 :goto_0

    .line 6207
    .end local v4           #updateCurrentTextView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6208
    .restart local v2       #tag:Ljava/lang/Integer;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    .line 6209
    :cond_9
    iget-object v5, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 6211
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 6221
    .end local v2           #tag:Ljava/lang/Integer;
    .restart local v4       #updateCurrentTextView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_a
    const v5, 0x7f0600ba

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto/16 :goto_0

    .line 6158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 6238
    if-ne p1, v0, :cond_0

    .line 6239
    iget-object v1, p0, Lcom/htc/music/HtcMusic$38;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mIsAutoUpdate:Z
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$8600(Lcom/htc/music/HtcMusic;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6240
    const/4 v0, 0x0

    .line 6244
    :cond_0
    return v0
.end method
