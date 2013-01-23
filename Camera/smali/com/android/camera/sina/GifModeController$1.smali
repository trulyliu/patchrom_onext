.class Lcom/android/camera/sina/GifModeController$1;
.super Ljava/lang/Object;
.source "GifModeController.java"

# interfaces
.implements Lcom/android/camera/debug/IOperationTimeoutController$TimeoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/sina/GifModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/sina/GifModeController;


# direct methods
.method constructor <init>(Lcom/android/camera/sina/GifModeController;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/sina/GifModeController$1;->this$0:Lcom/android/camera/sina/GifModeController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/android/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 2
    .parameter "timerHandle"
    .parameter "name"
    .parameter "startTime"
    .parameter "timeout"
    .parameter "userState"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/sina/GifModeController$1;->this$0:Lcom/android/camera/sina/GifModeController;

    check-cast p7, Ljava/lang/Integer;

    .end local p7
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/android/camera/sina/GifModeController;->onJpegCallbackTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/camera/sina/GifModeController;->access$000(Lcom/android/camera/sina/GifModeController;I)V

    .line 130
    return-void
.end method
