.class Lcom/android/camera/component/StorageWatcher;
.super Lcom/android/camera/component/IntentReceiver;
.source "StorageWatcher.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Storage Watcher"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6
    .parameter "cameraActivity"

    .prologue
    .line 25
    const-string v1, "Storage Watcher"

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/camera/component/StorageWatcher;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    .line 36
    .local v1, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 39
    iget-object v2, v1, Lcom/android/camera/HTCCamera;->storageMountedEvent:Lcom/android/camera/event/Event;

    .line 51
    .local v2, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/io/StorageSlot;>;>;"
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 53
    .local v4, storageSlot:Lcom/android/camera/io/StorageSlot;
    sget-object v5, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v5}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    iget-object v5, v5, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    sget-object v4, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    .line 55
    :cond_0
    if-nez v4, :cond_1

    .line 57
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v4

    .line 58
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 59
    const/4 v4, 0x0

    .line 61
    :cond_1
    if-nez v4, :cond_5

    .line 63
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown mounted path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v2           #event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/io/StorageSlot;>;>;"
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #storageSlot:Lcom/android/camera/io/StorageSlot;
    :goto_1
    return-void

    .line 40
    :cond_2
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 41
    iget-object v2, v1, Lcom/android/camera/HTCCamera;->storageUnmountedEvent:Lcom/android/camera/event/Event;

    .restart local v2       #event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/io/StorageSlot;>;>;"
    goto :goto_0

    .line 42
    .end local v2           #event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/io/StorageSlot;>;>;"
    :cond_3
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    iget-object v2, v1, Lcom/android/camera/HTCCamera;->storageEjectedEvent:Lcom/android/camera/event/Event;

    .restart local v2       #event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/io/StorageSlot;>;>;"
    goto :goto_0

    .line 46
    .end local v2           #event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/io/StorageSlot;>;>;"
    :cond_4
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected intent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .restart local v2       #event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/io/StorageSlot;>;>;"
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #storageSlot:Lcom/android/camera/io/StorageSlot;
    :cond_5
    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v5, v4}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_1
.end method

.method protected prepareIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 77
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v0, "file"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 81
    return-void
.end method
