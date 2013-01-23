.class public Lcom/android/camera/component/ComponentManager;
.super Lcom/android/camera/ThreadDependencyObject;
.source "ComponentManager.java"


# static fields
.field private static final PRINT_ADD_REMOVE_LOGS:Z

.field private static final PRINT_INIT_LOGS:Z


# instance fields
.field public final componentAddedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/component/Component;",
            ">;>;"
        }
    .end annotation
.end field

.field public final componentRemovedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/component/Component;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_Components:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/component/Component;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsAutoInitEnabled:Z

.field private m_IsReleased:Z

.field private final m_Owner:Lcom/android/camera/component/IComponentOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 19
    sget v0, Lcom/android/camera/debug/Debugger;->GENERIC_DEBUG_LEVEL:I

    if-lt v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/camera/component/ComponentManager;->PRINT_INIT_LOGS:Z

    .line 20
    sget v0, Lcom/android/camera/debug/Debugger;->GENERIC_DEBUG_LEVEL:I

    if-lt v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    return-void

    :cond_0
    move v0, v2

    .line 19
    goto :goto_0

    :cond_1
    move v1, v2

    .line 20
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/camera/component/IComponentOwner;)V
    .locals 3
    .parameter "owner"

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    .line 42
    if-nez p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "owner is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "owner is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/android/camera/component/ComponentManager;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    .line 52
    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "ComponentManager.ComponentAdded"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/component/ComponentManager;->componentAddedEvent:Lcom/android/camera/event/Event;

    .line 53
    iget-object v0, p0, Lcom/android/camera/component/ComponentManager;->componentAddedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, v2}, Lcom/android/camera/event/Event;->disableLogs(I)V

    .line 54
    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "ComponentManager.ComponentRemoved"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    .line 55
    iget-object v0, p0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, v2}, Lcom/android/camera/event/Event;->disableLogs(I)V

    .line 56
    return-void
.end method

.method private deinitializeComponent(Lcom/android/camera/component/Component;)V
    .locals 3
    .parameter "component"

    .prologue
    .line 139
    sget-boolean v0, Lcom/android/camera/component/ComponentManager;->PRINT_INIT_LOGS:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deinitializing component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->deinitialize()V

    .line 144
    return-void
.end method

.method private initializeComponent(Lcom/android/camera/component/Component;)V
    .locals 3
    .parameter "component"

    .prologue
    .line 279
    sget-boolean v0, Lcom/android/camera/component/ComponentManager;->PRINT_INIT_LOGS:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->initialize()V

    .line 284
    return-void
.end method


# virtual methods
.method public addComponent(Lcom/android/camera/component/Component;)V
    .locals 5
    .parameter "component"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    .line 68
    if-nez p1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "component is NULL in addComponent()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "component is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getOwner()Lcom/android/camera/component/IComponentOwner;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "component is already owned"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "component is already owned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getDependencyThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->getDependencyThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 80
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "component is created from another thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "component is created from another thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v1, :cond_3

    .line 87
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Component manager is released"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v2

    .line 95
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has been added before"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has been added before"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    .end local v0           #name:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 103
    .restart local v0       #name:Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-boolean v1, Lcom/android/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    if-eqz v1, :cond_5

    .line 104
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_5
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    invoke-virtual {p1, v1}, Lcom/android/camera/component/Component;->setOwner(Lcom/android/camera/component/IComponentOwner;)V

    .line 111
    iget-boolean v1, p0, Lcom/android/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    if-eqz v1, :cond_6

    .line 112
    invoke-direct {p0, p1}, Lcom/android/camera/component/ComponentManager;->initializeComponent(Lcom/android/camera/component/Component;)V

    .line 115
    :cond_6
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->componentAddedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 116
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->componentAddedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v3, p1}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 117
    :cond_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    return-void
.end method

.method public final containsComponent(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deinitializeComponents()V
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    .line 155
    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v3

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    .line 158
    .local v0, component:Lcom/android/camera/component/Component;
    invoke-direct {p0, v0}, Lcom/android/camera/component/ComponentManager;->deinitializeComponent(Lcom/android/camera/component/Component;)V

    goto :goto_0

    .line 159
    .end local v0           #component:Lcom/android/camera/component/Component;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    return-void
.end method

.method public enableAutoInitialization(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    if-eq v0, p1, :cond_0

    .line 169
    iput-boolean p1, p0, Lcom/android/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->initializeComponents()V

    .line 173
    :cond_0
    return-void
.end method

.method public getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public getComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;
    .locals 5
    .parameter "name"
    .parameter "checkArgs"
    .parameter "createArgs"

    .prologue
    const/4 v2, 0x0

    .line 185
    if-nez p1, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "name is NULL in getComponent()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v3

    .line 195
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    .line 196
    .local v0, component:Lcom/android/camera/component/Component;
    if-eqz v0, :cond_1

    .line 197
    monitor-exit v3

    move-object v2, v0

    .line 218
    :goto_0
    return-object v2

    .line 200
    :cond_1
    iget-boolean v4, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v4, :cond_2

    .line 201
    monitor-exit v3

    goto :goto_0

    .line 219
    .end local v0           #component:Lcom/android/camera/component/Component;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 204
    .restart local v0       #component:Lcom/android/camera/component/Component;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->isDependencyThread()Z

    move-result v4

    if-nez v4, :cond_3

    .line 205
    monitor-exit v3

    goto :goto_0

    .line 208
    :cond_3
    iget-object v4, p0, Lcom/android/camera/component/ComponentManager;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    invoke-interface {v4}, Lcom/android/camera/component/IComponentOwner;->getComponentFactory()Lcom/android/camera/component/ComponentFactory;

    move-result-object v1

    .line 209
    .local v1, factory:Lcom/android/camera/component/ComponentFactory;
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {v1, p1}, Lcom/android/camera/component/ComponentFactory;->isOnDemandComponent(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 210
    :cond_4
    monitor-exit v3

    goto :goto_0

    .line 211
    :cond_5
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/component/ComponentFactory;->createComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;

    move-result-object v0

    .line 212
    if-nez v0, :cond_6

    .line 213
    monitor-exit v3

    goto :goto_0

    .line 216
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    if-eqz v2, :cond_7

    .line 217
    invoke-virtual {v0}, Lcom/android/camera/component/Component;->initialize()V

    .line 218
    :cond_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_0
.end method

.method public final getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 227
    const-string v2, "clazz"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 228
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v3

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    .line 236
    .local v0, component:Lcom/android/camera/component/Component;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    monitor-exit v3

    .line 240
    .end local v0           #component:Lcom/android/camera/component/Component;
    :goto_0
    return-object v0

    .line 239
    :cond_2
    monitor-exit v3

    .line 240
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final getComponents(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 248
    const-string v3, "clazz"

    invoke-static {v3}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 249
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 253
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    iget-object v4, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v4

    .line 256
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    .line 258
    .local v0, component:Lcom/android/camera/component/Component;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    .end local v0           #component:Lcom/android/camera/component/Component;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    return-object v2
.end method

.method public getOwner()Lcom/android/camera/component/IComponentOwner;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/component/ComponentManager;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    return-object v0
.end method

.method public initializeComponents()V
    .locals 4

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    .line 295
    iget-boolean v2, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "initializeComponents() - Component manager is released"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    return-void

    .line 302
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    .line 303
    .local v0, component:Lcom/android/camera/component/Component;
    invoke-direct {p0, v0}, Lcom/android/camera/component/ComponentManager;->initializeComponent(Lcom/android/camera/component/Component;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    .line 315
    iget-boolean v0, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->removeComponents()V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    .line 325
    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeComponent(Lcom/android/camera/component/Component;)Z
    .locals 6
    .parameter "component"

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    .line 338
    if-nez p1, :cond_0

    .line 340
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "component is NULL in addComponent()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "component is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v3, :cond_1

    .line 347
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Component manager is released"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return v2

    .line 352
    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v3

    .line 354
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    .line 356
    .local v0, candComponent:Lcom/android/camera/component/Component;
    if-ne v0, p1, :cond_4

    .line 359
    invoke-direct {p0, p1}, Lcom/android/camera/component/ComponentManager;->deinitializeComponent(Lcom/android/camera/component/Component;)V

    .line 362
    sget-boolean v2, Lcom/android/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    if-eqz v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/camera/component/Component;->setOwner(Lcom/android/camera/component/IComponentOwner;)V

    .line 367
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v2}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 371
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v4, p1}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 372
    :cond_3
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 375
    .end local v0           #candComponent:Lcom/android/camera/component/Component;
    .end local v1           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 374
    .restart local v0       #candComponent:Lcom/android/camera/component/Component;
    .restart local v1       #name:Ljava/lang/String;
    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeComponents()V
    .locals 10

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    .line 388
    iget-boolean v6, p0, Lcom/android/camera/component/ComponentManager;->m_IsReleased:Z

    if-eqz v6, :cond_0

    .line 390
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "Component manager is released"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v7, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v7

    .line 398
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 399
    .local v5, names:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 402
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 405
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/Component;

    .line 406
    .local v1, component:Lcom/android/camera/component/Component;
    invoke-direct {p0, v1}, Lcom/android/camera/component/ComponentManager;->deinitializeComponent(Lcom/android/camera/component/Component;)V

    .line 409
    sget-boolean v6, Lcom/android/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    if-eqz v6, :cond_1

    .line 410
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing component "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/camera/component/Component;->setOwner(Lcom/android/camera/component/IComponentOwner;)V

    .line 414
    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 418
    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->componentRemovedEvent:Lcom/android/camera/event/Event;

    new-instance v8, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v8, v1}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, p0, v8}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 402
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 420
    .end local v1           #component:Lcom/android/camera/component/Component;
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    monitor-exit v7

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #names:[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
