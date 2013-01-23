.class Lcom/android/camera/effect/EffectControlUI$13;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectControlUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 348
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #calls: Lcom/android/camera/effect/EffectControlUI;->getFakeUIRotation()Lcom/android/camera/rotate/UIRotation;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$1300(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    .line 349
    .local v0, fakeRotation:Lcom/android/camera/rotate/UIRotation;
    if-nez v0, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #calls: Lcom/android/camera/effect/EffectControlUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$1400(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    .line 352
    .local v1, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-virtual {v2, v1, v1}, Lcom/android/camera/effect/EffectControlUI;->onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 356
    .end local v1           #rotation:Lcom/android/camera/rotate/UIRotation;
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$13;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-virtual {v2, v0, v0}, Lcom/android/camera/effect/EffectControlUI;->onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
