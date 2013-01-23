.class Lcom/android/camera/component/AutoFocusController$FocusHandle;
.super Lcom/android/camera/Handle;
.source "AutoFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/AutoFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusHandle"
.end annotation


# instance fields
.field public callbackTimerHandle:Lcom/android/camera/Handle;

.field public final focusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public final focusMode:Lcom/android/camera/AutoFocusMode;

.field public final meteringAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter "focusMode"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/AutoFocusMode;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, focusAreas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    .local p3, meteringAreas:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto-focus-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusMode:Lcom/android/camera/AutoFocusMode;

    .line 65
    iput-object p2, p0, Lcom/android/camera/component/AutoFocusController$FocusHandle;->focusAreas:Ljava/util/List;

    .line 66
    iput-object p3, p0, Lcom/android/camera/component/AutoFocusController$FocusHandle;->meteringAreas:Ljava/util/List;

    .line 67
    return-void
.end method
