.class final Lcom/htc/music/widget/SharedAdapter$5;
.super Ljava/lang/Object;
.source "SharedAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$choose_listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/htc/music/widget/SharedAdapter$5;->val$choose_listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p2, p0, Lcom/htc/music/widget/SharedAdapter$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/htc/music/widget/SharedAdapter$5;->val$choose_listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter$5;->val$dialog:Landroid/app/Dialog;

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 540
    return-void
.end method
