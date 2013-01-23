.class public Lcom/scalado/caps/autorama/TemplateMatch;
.super Lcom/scalado/jni/JniPeer;
.source "TemplateMatch.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 85
    invoke-static {}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeClassInit()V

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeCreate()V

    .line 22
    return-void
.end method

.method private native nativeCalculateTranslation(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate()V
.end method

.method private native nativeGetTranslation(Lcom/scalado/base/Vector;)V
.end method

.method private native nativeSetRegion(Lcom/scalado/base/Rect;)V
.end method

.method private native nativeSetTemplateRegion(Lcom/scalado/base/Rect;)V
.end method


# virtual methods
.method public calculateTranslation(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)Lcom/scalado/base/Vector;
    .locals 2
    .parameter "baseImage"
    .parameter "templateImage"

    .prologue
    const/4 v1, 0x0

    .line 35
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 36
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 39
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeCalculateTranslation(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)V

    .line 40
    new-instance v0, Lcom/scalado/base/Vector;

    invoke-direct {v0, v1, v1}, Lcom/scalado/base/Vector;-><init>(II)V

    .line 41
    .local v0, vector:Lcom/scalado/base/Vector;
    invoke-direct {p0, v0}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeGetTranslation(Lcom/scalado/base/Vector;)V

    .line 42
    return-object v0
.end method

.method public setImageRegion(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "region"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeSetRegion(Lcom/scalado/base/Rect;)V

    .line 69
    return-void
.end method

.method public setTemplateRegion(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "templateRegion"

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeSetTemplateRegion(Lcom/scalado/base/Rect;)V

    .line 56
    return-void
.end method
