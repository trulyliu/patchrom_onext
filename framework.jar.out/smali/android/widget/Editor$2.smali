.class Landroid/widget/Editor$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 6590
    iput-object p1, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6592
    iget-object v0, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->hookIME()V
    invoke-static {v0}, Landroid/widget/Editor;->access$6600(Landroid/widget/Editor;)V

    .line 6593
    return-void
.end method
