.class Lcom/htc/music/browserlayer/AddPlaylistTabActivity$2;
.super Ljava/lang/Object;
.source "AddPlaylistTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$2;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 153
    check-cast p1, Lcom/htc/widget/ActionBarDropDown;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/widget/ActionBarDropDown;->show()V

    .line 155
    :cond_0
    return-void
.end method
