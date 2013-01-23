.class Lcom/android/camera/component/MainBar$20;
.super Ljava/lang/Object;
.source "MainBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/MainBar;->initializeSettingsPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/camera/component/MainBar$20;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "mv"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/camera/component/MainBar$20;->this$0:Lcom/android/camera/component/MainBar;

    #calls: Lcom/android/camera/component/MainBar;->resetCloseMenuTimer()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$1700(Lcom/android/camera/component/MainBar;)V

    .line 518
    const/4 v0, 0x0

    return v0
.end method
