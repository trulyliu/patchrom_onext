.class public abstract Lcom/android/camera/component/CameraComponentBuilder;
.super Ljava/lang/Object;
.source "CameraComponentBuilder.java"

# interfaces
.implements Lcom/android/camera/component/IComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TComponent:",
        "Lcom/android/camera/component/Component;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/component/IComponentBuilder",
        "<TTComponent;>;"
    }
.end annotation


# instance fields
.field private final m_ComponentCategory:Lcom/android/camera/component/ComponentCategory;

.field private final m_ComponentName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "componentName"

    .prologue
    .line 18
    .local p0, this:Lcom/android/camera/component/CameraComponentBuilder;,"Lcom/android/camera/component/CameraComponentBuilder<TTComponent;>;"
    sget-object v0, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/component/CameraComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    .line 19
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V
    .locals 0
    .parameter "componentName"
    .parameter "category"

    .prologue
    .line 21
    .local p0, this:Lcom/android/camera/component/CameraComponentBuilder;,"Lcom/android/camera/component/CameraComponentBuilder<TTComponent;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/android/camera/component/CameraComponentBuilder;->m_ComponentCategory:Lcom/android/camera/component/ComponentCategory;

    .line 23
    iput-object p1, p0, Lcom/android/camera/component/CameraComponentBuilder;->m_ComponentName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public final getComponentCategory()Lcom/android/camera/component/ComponentCategory;
    .locals 1

    .prologue
    .line 31
    .local p0, this:Lcom/android/camera/component/CameraComponentBuilder;,"Lcom/android/camera/component/CameraComponentBuilder<TTComponent;>;"
    iget-object v0, p0, Lcom/android/camera/component/CameraComponentBuilder;->m_ComponentCategory:Lcom/android/camera/component/ComponentCategory;

    return-object v0
.end method

.method public final getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/android/camera/component/CameraComponentBuilder;,"Lcom/android/camera/component/CameraComponentBuilder<TTComponent;>;"
    iget-object v0, p0, Lcom/android/camera/component/CameraComponentBuilder;->m_ComponentName:Ljava/lang/String;

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 47
    .local p0, this:Lcom/android/camera/component/CameraComponentBuilder;,"Lcom/android/camera/component/CameraComponentBuilder<TTComponent;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final varargs isSupported([Ljava/lang/Object;)Z
    .locals 2
    .parameter "args"

    .prologue
    .local p0, this:Lcom/android/camera/component/CameraComponentBuilder;,"Lcom/android/camera/component/CameraComponentBuilder<TTComponent;>;"
    const/4 v1, 0x0

    .line 51
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/android/camera/HTCCamera;

    if-nez v0, :cond_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_1
    aget-object v0, p1, v1

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CameraComponentBuilder;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
