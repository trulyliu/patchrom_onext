.class Lcom/android/camera/component/MainBar$1;
.super Ljava/lang/Object;
.source "MainBar.java"

# interfaces
.implements Lcom/android/camera/widget/PopupBubble$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/MainBar;
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
    .line 110
    iput-object p1, p0, Lcom/android/camera/component/MainBar$1;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/android/camera/widget/PopupBubble;)V
    .locals 3
    .parameter "bubble"

    .prologue
    const/4 v2, 0x0

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/component/MainBar$1;->this$0:Lcom/android/camera/component/MainBar;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/android/camera/component/MainBar;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/component/MainBar$1;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$000(Lcom/android/camera/component/MainBar;)Lcom/android/camera/property/Property;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/android/camera/component/MainBar$1;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$100(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/component/MainBar$1;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$200(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/component/MainBar$1;->this$0:Lcom/android/camera/component/MainBar;

    invoke-virtual {v0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->notifyPopupBubbleClosed()V

    .line 126
    return-void
.end method
