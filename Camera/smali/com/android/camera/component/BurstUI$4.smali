.class Lcom/android/camera/component/BurstUI$4;
.super Ljava/lang/Object;
.source "BurstUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/QueryEventArgs",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/camera/MediaInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstUI;)V
    .locals 0
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/QueryEventArgs;)V
    .locals 4
    .parameter
    .parameter "sender"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/QueryEventArgs<Ljava/util/List<Lcom/android/camera/MediaInfo;>;>;>;"
    .local p3, e:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<Ljava/util/List<Lcom/android/camera/MediaInfo;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v0, contentUri:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/MediaInfo;>;"
    iget-object v3, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/component/BurstUI;->access$300(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/component/BurstUI;->access$300(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 671
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/component/BurstUI;->access$300(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 673
    new-instance v2, Lcom/android/camera/MediaInfo;

    invoke-direct {v2}, Lcom/android/camera/MediaInfo;-><init>()V

    .line 674
    .local v2, mediaInfo:Lcom/android/camera/MediaInfo;
    iget-object v3, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/component/BurstUI;->access$300(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 675
    const-string v3, "image/jpeg"

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 676
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 679
    .end local v2           #mediaInfo:Lcom/android/camera/MediaInfo;
    :cond_0
    invoke-virtual {p3, v0}, Lcom/android/camera/QueryEventArgs;->setResult(Ljava/lang/Object;)V

    .line 681
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 664
    check-cast p3, Lcom/android/camera/QueryEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/BurstUI$4;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/QueryEventArgs;)V

    return-void
.end method
