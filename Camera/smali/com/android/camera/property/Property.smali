.class public Lcom/android/camera/property/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/property/Property$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FLAG_NOT_NULL:I = 0x2

.field public static final FLAG_READONLY:I = 0x1

.field public static final FLAG_THREAD_INDEPENDENT:I = 0x4

.field public static final LOG_BINDING:I = 0x1

.field public static final LOG_CALLBACK:I = 0x2

.field public static final LOG_VALUE_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Property"

.field private static m_DefaultLogFlags:I

.field private static final m_PropertyMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/property/Property",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static printBindingLogs:Z

.field private static printCallbackLogs:Z

.field private static printValueChangedLogs:Z


# instance fields
.field public final flags:I

.field private m_BindingSource:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private m_BindingTargets:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_ChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;>;"
        }
    .end annotation
.end field

.field private final m_CreationThread:Ljava/lang/Thread;

.field private m_IsDestroyed:Z

.field private m_LogFlags:I

.field private final m_OwnerKey:Ljava/lang/Object;

.field private m_Value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/property/Property;->printBindingLogs:Z

    .line 40
    sput-boolean v1, Lcom/android/camera/property/Property;->printCallbackLogs:Z

    .line 41
    sput-boolean v1, Lcom/android/camera/property/Property;->printValueChangedLogs:Z

    .line 48
    sget-boolean v0, Lcom/android/camera/property/Property;->printBindingLogs:Z

    if-eqz v0, :cond_0

    .line 49
    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    .line 50
    :cond_0
    sget-boolean v0, Lcom/android/camera/property/Property;->printCallbackLogs:Z

    if-eqz v0, :cond_1

    .line 51
    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    .line 52
    :cond_1
    sget-boolean v0, Lcom/android/camera/property/Property;->printValueChangedLogs:Z

    if-eqz v0, :cond_2

    .line 53
    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    .line 54
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "ownerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, template:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    iput v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    .line 62
    if-nez p1, :cond_0

    .line 64
    const-string v0, "template"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    .line 70
    iget v0, p1, Lcom/android/camera/property/Property;->flags:I

    iput v0, p0, Lcom/android/camera/property/Property;->flags:I

    .line 71
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    .line 72
    iput-object p2, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    .line 73
    invoke-virtual {p1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    .line 76
    invoke-direct {p0}, Lcom/android/camera/property/Property;->addToPropertyMap()V

    .line 77
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "name"
    .parameter "flags"
    .parameter "ownerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p4, initialValue:Ljava/lang/Object;,"TTValue;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/Thread;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "thread"
    .parameter "name"
    .parameter "flags"
    .parameter "ownerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p5, initialValue:Ljava/lang/Object;,"TTValue;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    iput v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    .line 94
    if-nez p2, :cond_0

    .line 96
    const-string v0, "name"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 99
    :cond_0
    if-nez p4, :cond_1

    .line 101
    const-string v0, "ownerKey"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 104
    :cond_1
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    if-nez p5, :cond_2

    .line 106
    const-string v0, "Property"

    const-string v1, "FLAG_NOT_NULL flag is set, but initial value is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 109
    :cond_2
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    .line 113
    :cond_3
    iput-object p2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    .line 114
    iput p3, p0, Lcom/android/camera/property/Property;->flags:I

    .line 115
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_4

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/android/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    .line 116
    iput-object p4, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    .line 117
    iput-object p5, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    .line 120
    invoke-direct {p0}, Lcom/android/camera/property/Property;->addToPropertyMap()V

    .line 121
    return-void

    .line 115
    .restart local p1
    :cond_4
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private addBinding(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "targetOwnerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/camera/property/Property;->addBindingInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    monitor-enter p0

    .line 134
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/property/Property;->addBindingInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 135
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addBindingInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "targetOwnerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method private addChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    iget-boolean v0, p0, Lcom/android/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot add changed call-back"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] add call-back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addToPropertyMap()V
    .locals 4

    .prologue
    .line 196
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    sget-object v2, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    monitor-enter v2

    .line 198
    :try_start_0
    sget-object v1, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 199
    .local v0, propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property<*>;>;"
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property<*>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .restart local v0       #propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property<*>;>;"
    sget-object v1, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    monitor-exit v2

    .line 206
    return-void

    .line 205
    .end local v0           #propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property<*>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private bindInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V
    .locals 3
    .parameter
    .parameter "sourceOwnerKey"
    .parameter "ownerKey"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/property/PropertyBindingMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-boolean v0, p0, Lcom/android/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot create binding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    return-void

    .line 256
    :cond_0
    sget-object v0, Lcom/android/camera/property/Property$1;->$SwitchMap$com$android$camera$property$PropertyBindingMode:[I

    invoke-virtual {p4}, Lcom/android/camera/property/PropertyBindingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 259
    :pswitch_0
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 260
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -----> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    goto :goto_0

    .line 264
    :pswitch_1
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 265
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <----- ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_2
    invoke-direct {p1, p0}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    goto :goto_0

    .line 269
    :pswitch_2
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 270
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <----> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    .line 272
    invoke-direct {p1, p0}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    goto/16 :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bindToSource(Lcom/android/camera/property/Property;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->bindToSourceInternal(Lcom/android/camera/property/Property;)V

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    monitor-enter p0

    .line 288
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->bindToSourceInternal(Lcom/android/camera/property/Property;)V

    .line 289
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private bindToSourceInternal(Lcom/android/camera/property/Property;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    if-eqz v0, :cond_1

    .line 297
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    iget-object v2, v2, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] --/--> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    invoke-direct {v0, p0}, Lcom/android/camera/property/Property;->removeBinding(Lcom/android/camera/property/Property;)V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    .line 304
    :cond_1
    if-eqz p1, :cond_2

    .line 306
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/property/Property;->addBinding(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 307
    iput-object p1, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    .line 309
    :cond_2
    return-void
.end method

.method private clearBindingsInternal()V
    .locals 4

    .prologue
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    const/4 v3, 0x0

    .line 340
    iget-object v2, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/property/Property;

    .line 343
    .local v1, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    invoke-direct {v1, v3}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    goto :goto_0

    .line 344
    .end local v1           #target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    :cond_0
    iput-object v3, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    .line 348
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/camera/property/Property;->bindToSourceInternal(Lcom/android/camera/property/Property;)V

    .line 349
    return-void
.end method

.method public static create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "name"
    .parameter "flags"
    .parameter "ownerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;)",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation

    .prologue
    .line 360
    .local p3, initialValue:Ljava/lang/Object;,"TTValue;"
    new-instance v0, Lcom/android/camera/property/Property;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Thread;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 6
    .parameter "thread"
    .parameter "name"
    .parameter "flags"
    .parameter "ownerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Thread;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;)",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation

    .prologue
    .line 369
    .local p4, initialValue:Ljava/lang/Object;,"TTValue;"
    new-instance v0, Lcom/android/camera/property/Property;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/Thread;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "name"
    .parameter "ownerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "TTValue;)",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation

    .prologue
    .line 377
    .local p2, initialValue:Ljava/lang/Object;,"TTValue;"
    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "name"
    .parameter "ownerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "name"
    .parameter "ownerKey"
    .parameter "initialValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyInteger(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "name"
    .parameter "ownerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyInteger(Ljava/lang/String;Ljava/lang/Object;I)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "name"
    .parameter "ownerKey"
    .parameter "initialValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 426
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/android/camera/property/Property;->destroyInternal()V

    .line 435
    :goto_0
    return-void

    .line 430
    :cond_0
    monitor-enter p0

    .line 432
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/property/Property;->destroyInternal()V

    .line 433
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static destroy(Ljava/lang/Object;Lcom/android/camera/property/Property;)V
    .locals 4
    .parameter "ownerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    if-nez p1, :cond_0

    .line 404
    const-string v1, "property"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 405
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 409
    :cond_0
    iget-object v1, p1, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    if-eq v1, p0, :cond_1

    .line 411
    const-string v1, "Property"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid owner key to destroy property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 416
    :cond_1
    invoke-direct {p1}, Lcom/android/camera/property/Property;->destroy()V

    .line 417
    sget-object v2, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    monitor-enter v2

    .line 419
    :try_start_0
    sget-object v1, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 420
    .local v0, propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property<*>;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 421
    sget-object v1, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_2
    monitor-exit v2

    .line 423
    return-void

    .line 422
    .end local v0           #propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property<*>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static destroyAllProperties(Ljava/lang/Object;)V
    .locals 4
    .parameter "ownerKey"

    .prologue
    .line 453
    if-nez p0, :cond_0

    .line 455
    const-string v2, "ownerKey"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 456
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 460
    :cond_0
    sget-object v3, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    monitor-enter v3

    .line 462
    :try_start_0
    sget-object v2, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 463
    .local v1, propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property<*>;>;"
    if-eqz v1, :cond_2

    .line 465
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 466
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/property/Property;

    invoke-direct {v2}, Lcom/android/camera/property/Property;->destroy()V

    .line 465
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 467
    :cond_1
    sget-object v2, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .end local v0           #i:I
    :cond_2
    monitor-exit v3

    .line 470
    return-void

    .line 469
    .end local v1           #propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property<*>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private destroyInternal()V
    .locals 1

    .prologue
    .line 438
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/property/Property;->m_IsDestroyed:Z

    .line 439
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    .line 444
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/property/Property;->clearBindingsInternal()V

    .line 445
    return-void
.end method

.method public static printStatusLogs()V
    .locals 7

    .prologue
    .line 529
    sget-object v5, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    monitor-enter v5

    .line 532
    const/4 v1, 0x0

    .line 533
    .local v1, propertyCount:I
    :try_start_0
    sget-object v4, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 534
    .local v2, propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property<*>;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    .line 537
    .end local v2           #propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property<*>;>;"
    :cond_0
    const-string v3, "Property"

    .line 538
    .local v3, tag:Ljava/lang/String;
    const-string v4, "***** Property Status *****"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property owners : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Properties      : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v4, "***************************"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    monitor-exit v5

    .line 543
    return-void

    .line 542
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #tag:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private removeBinding(Lcom/android/camera/property/Property;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 551
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->removeBindingInternal(Lcom/android/camera/property/Property;)V

    .line 559
    :goto_0
    return-void

    .line 554
    :cond_0
    monitor-enter p0

    .line 556
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->removeBindingInternal(Lcom/android/camera/property/Property;)V

    .line 557
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeBindingInternal(Lcom/android/camera/property/Property;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    .line 564
    :cond_0
    return-void
.end method

.method private removeChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 595
    iget-boolean v3, p0, Lcom/android/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v3, :cond_1

    .line 624
    :cond_0
    :goto_0
    return v2

    .line 599
    :cond_1
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 603
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_4

    .line 605
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/property/PropertyChangedCallback;

    .line 606
    .local v0, candCallback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    if-ne v0, p1, :cond_3

    .line 609
    iget v2, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 610
    const-string v2, "Property"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] remove call-back "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_2
    iget-object v2, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    const/4 v2, 0x1

    .line 620
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 621
    iput-object v5, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    goto :goto_0

    .line 603
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 620
    .end local v0           #candCallback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    :cond_4
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 621
    iput-object v5, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    goto :goto_0

    .line 620
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 621
    iput-object v5, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    :cond_5
    throw v2
.end method

.method private setValueInternal(Ljava/lang/Object;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, value:Ljava/lang/Object;,"TTValue;"
    iget-object v6, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    .line 668
    .local v6, oldValue:Ljava/lang/Object;,"TTValue;"
    if-nez v6, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 669
    :cond_2
    const/4 v7, 0x0

    .line 698
    :goto_0
    return v7

    .line 672
    :cond_3
    iput-object p1, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    .line 673
    iget v7, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_4

    .line 674
    const-string v7, "Property"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_4
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 679
    new-instance v2, Lcom/android/camera/property/PropertyChangedEventArgs;

    invoke-direct {v2, p0, v6, p1}, Lcom/android/camera/property/PropertyChangedEventArgs;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 680
    .local v2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<TTValue;>;"
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    :goto_1
    if-ge v4, v1, :cond_6

    .line 683
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/property/PropertyChangedCallback;

    .line 684
    .local v0, callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<TTValue;>;"
    iget v7, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    .line 685
    const-string v7, "Property"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] call-back to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_5
    invoke-interface {v0, p0, v2}, Lcom/android/camera/property/PropertyChangedCallback;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    .line 680
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 691
    .end local v0           #callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<TTValue;>;"
    .end local v1           #count:I
    .end local v2           #e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<TTValue;>;"
    .end local v4           #i:I
    :cond_6
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-eqz v7, :cond_7

    .line 693
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 694
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/camera/property/Property<TTValue;>;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/property/Property;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 698
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/camera/property/Property<TTValue;>;Ljava/lang/Object;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private threadAccessCheck()V
    .locals 2

    .prologue
    .line 706
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 707
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 708
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    if-nez p1, :cond_0

    .line 154
    const-string v0, "callback"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 159
    :cond_0
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    .line 162
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->addChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_1
    monitor-enter p0

    .line 168
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->addChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 169
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter "ownerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    const/4 v0, 0x0

    sget-object v1, Lcom/android/camera/property/PropertyBindingMode;->OneWay:Lcom/android/camera/property/PropertyBindingMode;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V

    .line 214
    return-void
.end method

.method public final bind(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V
    .locals 2
    .parameter
    .parameter "sourceOwnerKey"
    .parameter "ownerKey"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/property/PropertyBindingMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    if-nez p1, :cond_0

    .line 220
    const-string v0, "source"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 223
    :cond_0
    if-ne p1, p0, :cond_1

    .line 225
    const-string v0, "Property"

    const-string v1, "Cannot bind property to self"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 230
    :cond_1
    invoke-direct {p1}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    .line 233
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 235
    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    .line 236
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/property/Property;->bindInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_2
    monitor-enter p0

    .line 242
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/property/Property;->bindInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V

    .line 243
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final checkOwnerKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "ownerKey"

    .prologue
    .line 316
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final clearBindings()V
    .locals 1

    .prologue
    .line 324
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    .line 327
    invoke-direct {p0}, Lcom/android/camera/property/Property;->clearBindingsInternal()V

    .line 336
    :goto_0
    return-void

    .line 331
    :cond_0
    monitor-enter p0

    .line 333
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/property/Property;->clearBindingsInternal()V

    .line 334
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final disableLogs(I)V
    .locals 2
    .parameter "logFlags"

    .prologue
    .line 477
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    .line 478
    return-void
.end method

.method public final enableLogs(I)V
    .locals 1
    .parameter "logFlags"

    .prologue
    .line 485
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    .line 486
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasChangedCallbacks()Z
    .locals 1

    .prologue
    .line 501
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNull()Z
    .locals 1

    .prologue
    .line 509
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isValueEquals(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, value:Ljava/lang/Object;,"TTValue;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 521
    :goto_0
    return v0

    .line 519
    :cond_0
    if-eqz p1, :cond_1

    .line 520
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 521
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)Z"
        }
    .end annotation

    .prologue
    .line 572
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    if-nez p1, :cond_0

    .line 574
    const-string v0, "callback"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 579
    :cond_0
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 581
    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    .line 582
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->removeChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)Z

    move-result v0

    .line 588
    :goto_0
    return v0

    .line 586
    :cond_1
    monitor-enter p0

    .line 588
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->removeChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, value:Ljava/lang/Object;,"TTValue;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "ownerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p2, value:Ljava/lang/Object;,"TTValue;"
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 639
    const-string v0, "Property"

    const-string v1, "Invalid owner key to set value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 644
    :cond_0
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 646
    const-string v0, "Property"

    const-string v1, "Value cannot be NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 651
    :cond_1
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 653
    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    .line 654
    invoke-direct {p0, p2}, Lcom/android/camera/property/Property;->setValueInternal(Ljava/lang/Object;)Z

    move-result v0

    .line 660
    :goto_0
    return v0

    .line 658
    :cond_2
    monitor-enter p0

    .line 660
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/property/Property;->setValueInternal(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
