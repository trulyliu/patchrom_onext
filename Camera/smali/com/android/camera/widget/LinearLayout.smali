.class public Lcom/android/camera/widget/LinearLayout;
.super Landroid/widget/LinearLayout;
.source "LinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/LinearLayout$OnDrawListener;
    }
.end annotation


# instance fields
.field private m_OnDrawListener:Lcom/android/camera/widget/LinearLayout$OnDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/widget/LinearLayout;->m_OnDrawListener:Lcom/android/camera/widget/LinearLayout$OnDrawListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/camera/widget/LinearLayout;->m_OnDrawListener:Lcom/android/camera/widget/LinearLayout$OnDrawListener;

    invoke-interface {v0, p1}, Lcom/android/camera/widget/LinearLayout$OnDrawListener;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    :cond_0
    return-void
.end method

.method public final setOnDrawListener(Lcom/android/camera/widget/LinearLayout$OnDrawListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/widget/LinearLayout;->m_OnDrawListener:Lcom/android/camera/widget/LinearLayout$OnDrawListener;

    .line 51
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 52
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
