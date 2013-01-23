.class Lcom/android/camera/component/ThumbnailUI$2;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ThumbnailUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$2;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 115
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$2;->this$0:Lcom/android/camera/component/ThumbnailUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_CurrentThumbAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailUI;->access$202(Lcom/android/camera/component/ThumbnailUI;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 111
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 105
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 101
    return-void
.end method
