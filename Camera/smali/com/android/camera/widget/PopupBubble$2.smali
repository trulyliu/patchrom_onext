.class Lcom/android/camera/widget/PopupBubble$2;
.super Ljava/lang/Object;
.source "PopupBubble.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/PopupBubble;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/PopupBubble;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble$2;->this$0:Lcom/android/camera/widget/PopupBubble;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    .line 195
    iget-object v7, p0, Lcom/android/camera/widget/PopupBubble$2;->this$0:Lcom/android/camera/widget/PopupBubble;

    #getter for: Lcom/android/camera/widget/PopupBubble;->m_OnOutsideTouchListener:Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;
    invoke-static {v7}, Lcom/android/camera/widget/PopupBubble;->access$600(Lcom/android/camera/widget/PopupBubble;)Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 199
    .local v5, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 203
    .local v6, y:I
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 204
    .local v4, viewPosition:[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 205
    aget v0, v4, v9

    .line 206
    .local v0, popupViewX:I
    const/4 v7, 0x1

    aget v1, v4, v7

    .line 208
    .local v1, popupViewY:I
    add-int v2, v5, v0

    .line 209
    .local v2, touchX:I
    add-int v3, v6, v1

    .line 212
    .local v3, touchY:I
    int-to-float v7, v2

    int-to-float v8, v3

    invoke-virtual {p2, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 213
    iget-object v7, p0, Lcom/android/camera/widget/PopupBubble$2;->this$0:Lcom/android/camera/widget/PopupBubble;

    #getter for: Lcom/android/camera/widget/PopupBubble;->m_OnOutsideTouchListener:Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;
    invoke-static {v7}, Lcom/android/camera/widget/PopupBubble;->access$600(Lcom/android/camera/widget/PopupBubble;)Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;

    move-result-object v7

    invoke-interface {v7, p1, p2}, Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;->onOutsideTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 216
    int-to-float v7, v5

    int-to-float v8, v6

    invoke-virtual {p2, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 219
    .end local v0           #popupViewX:I
    .end local v1           #popupViewY:I
    .end local v2           #touchX:I
    .end local v3           #touchY:I
    .end local v4           #viewPosition:[I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_0
    return v9
.end method
