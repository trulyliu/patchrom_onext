.class Lcom/android/camera/bi/MediaStatisticController$4;
.super Ljava/lang/Object;
.source "MediaStatisticController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/bi/MediaStatisticController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/bi/MediaStatisticController;


# direct methods
.method constructor <init>(Lcom/android/camera/bi/MediaStatisticController;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Boolean;>;"
    iget-object v6, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 129
    .local v2, first_element:Z
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v6, v6, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 130
    .local v4, keys:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    .local v3, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v6, v6, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 134
    .local v1, count:Ljava/lang/Integer;
    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    .line 135
    const/4 v2, 0x0

    .line 138
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 137
    :cond_0
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 144
    .end local v1           #count:Ljava/lang/Integer;
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, result:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    invoke-virtual {v6, v5}, Lcom/android/camera/bi/MediaStatisticController;->writeBehaviorData(Ljava/lang/String;)V

    .line 148
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v6, v6, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    .line 149
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    const/4 v7, 0x0

    iput v7, v6, Lcom/android/camera/bi/MediaStatisticController;->m_mediaTaken:I

    .line 162
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #first_element:Z
    .end local v4           #keys:Ljava/util/Enumeration;
    .end local v5           #result:Ljava/lang/String;
    :goto_2
    return-void

    .line 154
    :cond_2
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v7, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    invoke-virtual {v7}, Lcom/android/camera/bi/MediaStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    .line 155
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    instance-of v6, v6, Lcom/android/camera/bi/PhotoModeSnapStatisticController;

    if-eqz v6, :cond_3

    .line 156
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    const-string v7, "pref_bi_photo_mode_setting_snap_history"

    invoke-virtual {v6, v7}, Lcom/android/camera/bi/MediaStatisticController;->rebuildComposeKeyTable(Ljava/lang/String;)V

    .line 160
    :goto_3
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v7, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v8, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v8, v8, Lcom/android/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/camera/bi/MediaStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/camera/bi/MediaStatisticController;->m_mediaTaken:I

    goto :goto_2

    .line 158
    :cond_3
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    const-string v7, "pref_bi_video_setting_recording_history"

    invoke-virtual {v6, v7}, Lcom/android/camera/bi/MediaStatisticController;->rebuildComposeKeyTable(Ljava/lang/String;)V

    goto :goto_3
.end method
