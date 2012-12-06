.class Lcom/htc/music/carmode/CarLibraryActivity$3;
.super Ljava/lang/Object;
.source "CarLibraryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarLibraryActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLibraryActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/htc/music/carmode/CarLibraryActivity$3;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity$3;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarLibraryActivity;->onBackPressed()V

    .line 274
    return-void
.end method
