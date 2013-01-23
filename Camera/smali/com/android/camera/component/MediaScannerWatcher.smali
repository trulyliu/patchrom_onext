.class public Lcom/android/camera/component/MediaScannerWatcher;
.super Lcom/android/camera/component/IntentReceiver;
.source "MediaScannerWatcher.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Media Scanner Watcher"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6
    .parameter "cameraActivity"

    .prologue
    .line 24
    const-string v1, "Media Scanner Watcher"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/camera/component/MediaScannerWatcher;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 34
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    iget-object v2, v1, Lcom/android/camera/HTCCamera;->mediaScannerFinishedEvent:Lcom/android/camera/event/Event;

    .line 45
    .local v2, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/event/EventArgs;>;"
    :goto_0
    sget-object v3, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 46
    .end local v2           #event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/event/EventArgs;>;"
    :goto_1
    return-void

    .line 38
    :cond_0
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    iget-object v2, v1, Lcom/android/camera/HTCCamera;->mediaScannerStartedEvent:Lcom/android/camera/event/Event;

    .restart local v2       #event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/event/EventArgs;>;"
    goto :goto_0

    .line 42
    .end local v2           #event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/event/EventArgs;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected prepareIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 54
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v0, "file"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 57
    return-void
.end method
