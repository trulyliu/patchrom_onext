.class Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CategorySwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CategorySwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field text:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/music/carmode/CategorySwitcherAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/carmode/CategorySwitcherAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->this$0:Lcom/htc/music/carmode/CategorySwitcherAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/carmode/CategorySwitcherAdapter;Lcom/htc/music/carmode/CategorySwitcherAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/carmode/CategorySwitcherAdapter;)V

    return-void
.end method
