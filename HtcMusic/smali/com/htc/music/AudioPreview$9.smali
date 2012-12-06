.class Lcom/htc/music/AudioPreview$9;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

.field final synthetic val$dialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;Lcom/htc/widget/HtcAlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    iput-object p2, p0, Lcom/htc/music/AudioPreview$9;->val$dialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 13
    .parameter "di"

    .prologue
    const/4 v12, -0x2

    .line 1214
    iget-object v6, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    new-instance v7, Lcom/htc/widget/HtcRimImageButton;

    iget-object v8, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcRimImageButton;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;
    invoke-static {v6, v7}, Lcom/htc/music/AudioPreview;->access$2102(Lcom/htc/music/AudioPreview;Lcom/htc/widget/HtcRimImageButton;)Lcom/htc/widget/HtcRimImageButton;

    .line 1215
    iget-object v6, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$2100(Lcom/htc/music/AudioPreview;)Lcom/htc/widget/HtcRimImageButton;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    const-string v8, "common_b_transport_outer"

    const v9, 0x2080014

    invoke-static {v7, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    const-string v9, "common_b_transport_pressed"

    const v10, 0x2080015

    invoke-static {v8, v9, v10}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    iget-object v9, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    const-string v10, "common_b_transport_rest"

    const v11, 0x2080016

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1230
    iget-object v6, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$2100(Lcom/htc/music/AudioPreview;)Lcom/htc/widget/HtcRimImageButton;

    move-result-object v6

    new-instance v7, Lcom/htc/music/AudioPreview$9$1;

    invoke-direct {v7, p0}, Lcom/htc/music/AudioPreview$9$1;-><init>(Lcom/htc/music/AudioPreview$9;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1239
    iget-object v6, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$2100(Lcom/htc/music/AudioPreview;)Lcom/htc/widget/HtcRimImageButton;

    move-result-object v6

    const v7, 0x20800b6

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1241
    iget-object v6, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$2100(Lcom/htc/music/AudioPreview;)Lcom/htc/widget/HtcRimImageButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcRimImageButton;->requestFocus()Z

    .line 1245
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1248
    .local v3, newBtnLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xe

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1250
    iget-object v6, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v6}, Lcom/htc/music/AudioPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x205000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1253
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct {v4, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1255
    .local v4, newWrapper:Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/htc/music/AudioPreview$9;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayPauseBtn:Lcom/htc/widget/HtcRimImageButton;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$2100(Lcom/htc/music/AudioPreview;)Lcom/htc/widget/HtcRimImageButton;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1258
    iget-object v6, p0, Lcom/htc/music/AudioPreview$9;->val$dialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v7, -0x3

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1260
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1261
    .local v5, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1266
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .line 1267
    .local v1, index:I
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1268
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 1273
    :cond_0
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1274
    invoke-virtual {v5, v4, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1277
    iget-object v6, p0, Lcom/htc/music/AudioPreview$9;->val$dialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1278
    return-void

    .line 1267
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
