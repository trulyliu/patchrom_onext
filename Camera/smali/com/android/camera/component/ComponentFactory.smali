.class public abstract Lcom/android/camera/component/ComponentFactory;
.super Lcom/android/camera/ThreadDependencyObject;
.source "ComponentFactory.java"


# instance fields
.field public final componentOwner:Lcom/android/camera/component/IComponentOwner;

.field private m_ComponentBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/component/IComponentBuilder",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/camera/component/IComponentOwner;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/component/ComponentFactory;->componentOwner:Lcom/android/camera/component/IComponentOwner;

    .line 24
    return-void
.end method

.method private createComponent(Lcom/android/camera/component/IComponentBuilder;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;
    .locals 3
    .parameter
    .parameter "checkArgs"
    .parameter "createArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/component/IComponentBuilder",
            "<*>;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/camera/component/Component;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, builder:Lcom/android/camera/component/IComponentBuilder;,"Lcom/android/camera/component/IComponentBuilder<*>;"
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating component \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/component/IComponentBuilder;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-interface {p1, p2}, Lcom/android/camera/component/IComponentBuilder;->isSupported([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/component/IComponentBuilder;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported in current instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p3}, Lcom/android/camera/component/IComponentBuilder;->createComponent([Ljava/lang/Object;)Lcom/android/camera/component/Component;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final createComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;
    .locals 9
    .parameter "componentName"
    .parameter "checkArgs"
    .parameter "createArgs"

    .prologue
    const/4 v6, 0x0

    .line 32
    if-nez p1, :cond_0

    move-object v2, v6

    .line 70
    :goto_0
    return-object v2

    .line 36
    :cond_0
    iget-object v7, p0, Lcom/android/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 37
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentFactory;->getComponentBuilders()[Lcom/android/camera/component/IComponentBuilder;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/android/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 44
    .local v2, component:Lcom/android/camera/component/Component;
    const/4 v0, 0x0

    .line 45
    .local v0, builder:Lcom/android/camera/component/IComponentBuilder;,"Lcom/android/camera/component/IComponentBuilder<*>;"
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/IComponentBuilder;

    .line 47
    .local v1, candBuilder:Lcom/android/camera/component/IComponentBuilder;,"Lcom/android/camera/component/IComponentBuilder<*>;"
    invoke-interface {v1}, Lcom/android/camera/component/IComponentBuilder;->getComponentName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 49
    move-object v0, v1

    .line 53
    .end local v1           #candBuilder:Lcom/android/camera/component/IComponentBuilder;,"Lcom/android/camera/component/IComponentBuilder<*>;"
    :cond_3
    if-nez v0, :cond_4

    move-object v2, v6

    .line 54
    goto :goto_0

    .line 57
    :cond_4
    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/component/ComponentFactory;->createComponent(Lcom/android/camera/component/IComponentBuilder;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;

    move-result-object v2

    .line 58
    if-nez v2, :cond_5

    move-object v2, v6

    .line 59
    goto :goto_0

    .line 62
    :cond_5
    iget-object v7, p0, Lcom/android/camera/component/ComponentFactory;->componentOwner:Lcom/android/camera/component/IComponentOwner;

    invoke-interface {v7}, Lcom/android/camera/component/IComponentOwner;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v3

    .line 63
    .local v3, componentManager:Lcom/android/camera/component/ComponentManager;
    invoke-virtual {v3, v2}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v3           #componentManager:Lcom/android/camera/component/ComponentManager;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 68
    .local v4, ex:Ljava/lang/Throwable;
    if-eqz v2, :cond_6

    .line 69
    invoke-virtual {v2}, Lcom/android/camera/component/Component;->deinitialize()V

    :cond_6
    move-object v2, v6

    .line 70
    goto :goto_0
.end method

.method public final createComponents(Lcom/android/camera/component/ComponentCategory;[Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 9
    .parameter "category"
    .parameter "checkArgs"
    .parameter "createArgs"

    .prologue
    .line 93
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createComponents("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") - start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v6, p0, Lcom/android/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentFactory;->getComponentBuilders()[Lcom/android/camera/component/IComponentBuilder;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lcom/android/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    .line 100
    :cond_0
    iget-object v6, p0, Lcom/android/camera/component/ComponentFactory;->componentOwner:Lcom/android/camera/component/IComponentOwner;

    invoke-interface {v6}, Lcom/android/camera/component/IComponentOwner;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v2

    .line 103
    .local v2, componentManager:Lcom/android/camera/component/ComponentManager;
    const/4 v5, 0x0

    .line 104
    .local v5, result:I
    iget-object v6, p0, Lcom/android/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/IComponentBuilder;

    .line 107
    .local v0, builder:Lcom/android/camera/component/IComponentBuilder;,"Lcom/android/camera/component/IComponentBuilder<*>;"
    invoke-interface {v0}, Lcom/android/camera/component/IComponentBuilder;->getComponentCategory()Lcom/android/camera/component/ComponentCategory;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 111
    const/4 v1, 0x0

    .line 114
    .local v1, component:Lcom/android/camera/component/Component;
    :try_start_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/component/ComponentFactory;->createComponent(Lcom/android/camera/component/IComponentBuilder;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v2, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v3

    .line 122
    .local v3, ex:Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "createComponents() - Error creating component"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v1}, Lcom/android/camera/component/Component;->deinitialize()V

    goto :goto_0

    .line 127
    .end local v0           #builder:Lcom/android/camera/component/IComponentBuilder;,"Lcom/android/camera/component/IComponentBuilder<*>;"
    .end local v1           #component:Lcom/android/camera/component/Component;
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_2
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createComponents("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") - end"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v5
.end method

.method protected abstract getComponentBuilders()[Lcom/android/camera/component/IComponentBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/android/camera/component/IComponentBuilder",
            "<*>;"
        }
    .end annotation
.end method

.method public final isOnDemandComponent(Ljava/lang/String;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    const/4 v2, 0x0

    .line 142
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v2

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentFactory;->getComponentBuilders()[Lcom/android/camera/component/IComponentBuilder;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    .line 150
    :cond_2
    iget-object v3, p0, Lcom/android/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/IComponentBuilder;

    .line 152
    .local v0, builder:Lcom/android/camera/component/IComponentBuilder;,"Lcom/android/camera/component/IComponentBuilder<*>;"
    invoke-interface {v0}, Lcom/android/camera/component/IComponentBuilder;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    invoke-interface {v0}, Lcom/android/camera/component/IComponentBuilder;->getComponentCategory()Lcom/android/camera/component/ComponentCategory;

    move-result-object v3

    sget-object v4, Lcom/android/camera/component/ComponentCategory;->OnDemand:Lcom/android/camera/component/ComponentCategory;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
