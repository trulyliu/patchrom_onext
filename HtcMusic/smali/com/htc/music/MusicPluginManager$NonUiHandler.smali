.class final Lcom/htc/music/MusicPluginManager$NonUiHandler;
.super Landroid/os/Handler;
.source "MusicPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# static fields
.field public static final ATTR_B_START_ACTIVITY:Ljava/lang/String; = "startActivity"

.field public static final ATTR_S_SERVICE_TO_BIND:Ljava/lang/String; = "serviceToBind"


# instance fields
.field final synthetic this$0:Lcom/htc/music/MusicPluginManager;


# direct methods
.method public constructor <init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$NonUiHandler;->this$0:Lcom/htc/music/MusicPluginManager;

    .line 1503
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1504
    return-void
.end method

.method private deleteOldestFiles(Ljava/lang/String;)V
    .locals 11
    .parameter "directory"

    .prologue
    .line 1507
    if-nez p1, :cond_1

    .line 1556
    :cond_0
    return-void

    .line 1508
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v3, fileDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1511
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1512
    .local v6, files:[Ljava/io/File;
    if-eqz v6, :cond_0

    .line 1514
    array-length v2, v6

    .line 1515
    .local v2, fileCount:I
    const/16 v8, 0x64

    if-le v2, v8, :cond_0

    .line 1517
    add-int/lit8 v0, v2, -0x64

    .line 1518
    .local v0, deleteCount:I
    if-lez v0, :cond_0

    .line 1520
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1521
    .local v4, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v8, Lcom/htc/music/MusicPluginManager$NonUiHandler$1;

    invoke-direct {v8, p0}, Lcom/htc/music/MusicPluginManager$NonUiHandler$1;-><init>(Lcom/htc/music/MusicPluginManager$NonUiHandler;)V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1543
    const/4 v5, 0x0

    .line 1544
    .local v5, fileToDelete:Ljava/io/File;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v0, :cond_0

    .line 1545
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #fileToDelete:Ljava/io/File;
    check-cast v5, Ljava/io/File;

    .line 1546
    .restart local v5       #fileToDelete:Ljava/io/File;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1548
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1549
    const-string v8, "[MusicPluginManager]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .line 1544
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1550
    :catch_0
    move-exception v1

    .line 1551
    .local v1, e:Ljava/lang/SecurityException;
    const-string v8, "[MusicPluginManager]"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1560
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1578
    const-string v2, "[MusicPluginManager]"

    const-string v3, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1562
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->removeMessages(I)V

    .line 1563
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1564
    .local v1, directory:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->deleteOldestFiles(Ljava/lang/String;)V

    goto :goto_0

    .line 1569
    .end local v1           #directory:Ljava/lang/String;
    :pswitch_1
    const-string v2, "[MusicPluginManager]"

    const-string v3, "Refresh plugins in non-UI."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$NonUiHandler;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 1571
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1572
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1573
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$NonUiHandler;->this$0:Lcom/htc/music/MusicPluginManager;

    const-string v3, "serviceToBind"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "startActivity"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    #calls: Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v4}, Lcom/htc/music/MusicPluginManager;->access$1000(Lcom/htc/music/MusicPluginManager;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 1560
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
