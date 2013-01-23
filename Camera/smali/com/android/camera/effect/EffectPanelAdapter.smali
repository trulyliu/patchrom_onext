.class public Lcom/android/camera/effect/EffectPanelAdapter;
.super Landroid/widget/BaseAdapter;
.source "EffectPanelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectPanelAdapter$1;,
        Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static m_ImageAndTextTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

.field private m_EffectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private m_Rotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "EffectPanelAdapter"

    sput-object v0, Lcom/android/camera/effect/EffectPanelAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;Ljava/util/List;)V
    .locals 1
    .parameter "cameraActivity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    .line 52
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 53
    if-eqz p2, :cond_0

    .end local p2           #effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    :goto_0
    iput-object p2, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    .line 55
    invoke-static {p1}, Lcom/android/camera/effect/EffectPanelAdapter;->createEffectIconDrawableHashTable(Lcom/android/camera/HTCCamera;)V

    .line 56
    return-void

    .line 53
    .restart local p2       #effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static createEffectIconDrawableHashTable(Lcom/android/camera/HTCCamera;)V
    .locals 9
    .parameter "cameraActivity"

    .prologue
    const v8, 0x7f02007a

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 219
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->TAG:Ljava/lang/String;

    const-string v2, "createDrawableHashTable() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    .local v0, res:Landroid/content/res/Resources;
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "mono"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f02007b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00f9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "negative"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f02007e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00fb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "solarize"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020082

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00fc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "posterize"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020080

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00fd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "aqua"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020075

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "distortion"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020079

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0107

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vignette"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020083

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0108

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "depth"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020078

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0106

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "dots"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a010c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "maple"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a010d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "nash"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f02007d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a010e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "splittoning_mono"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f02007c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a010f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "splittoning_color"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0110

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vintage-high"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020077

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a010b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vintage-red"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020084

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0109

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vintage-green"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020076

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a010a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vintage-sepia"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020081

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00fa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "none"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f02007f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00f5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->TAG:Ljava/lang/String;

    const-string v2, "createDrawableHashTable() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public static initialize(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "cameraActivity"

    .prologue
    .line 89
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "index"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    if-nez p2, :cond_2

    .line 100
    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030009

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 101
    new-instance v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;

    invoke-direct {v3, v8}, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;-><init>(Lcom/android/camera/effect/EffectPanelAdapter$1;)V

    .line 102
    .local v3, viewInfo:Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;
    const v4, 0x7f080068

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->containerView:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 103
    const v4, 0x7f08006a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageView:Landroid/widget/ImageView;

    .line 104
    const v4, 0x7f08006b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->indicatorImageView:Landroid/widget/ImageView;

    .line 105
    const v4, 0x7f08006c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    :goto_0
    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 114
    .local v1, effect:Lcom/android/camera/effect/EffectBase;
    sget-object v4, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 115
    .local v2, imageAndText:[Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 116
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Object;

    .line 119
    :cond_0
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->containerView:Lcom/android/camera/rotate/RotateLinearLayout;

    iget-object v5, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateLinearLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 122
    aget-object v0, v2, v6

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 123
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 124
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :goto_1
    aget-object v4, v2, v7

    if-eqz v4, :cond_4

    .line 130
    iget-object v5, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    aget-object v4, v2, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :goto_2
    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    if-eq v4, v1, :cond_5

    .line 143
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    instance-of v4, v4, Lcom/android/camera/widget/ColorMultiplyTextView;

    if-eqz v4, :cond_1

    .line 144
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    check-cast v4, Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v4, v6}, Lcom/android/camera/widget/ColorMultiplyTextView;->applyColorMultiplication(Z)V

    .line 145
    :cond_1
    invoke-virtual {p2, v6}, Landroid/view/View;->setSelected(Z)V

    .line 161
    :goto_3
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getCapabilities()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    .line 162
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->indicatorImageView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :goto_4
    return-object p2

    .line 109
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #effect:Lcom/android/camera/effect/EffectBase;
    .end local v2           #imageAndText:[Ljava/lang/Object;
    .end local v3           #viewInfo:Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;

    .restart local v3       #viewInfo:Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;
    goto :goto_0

    .line 126
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #effect:Lcom/android/camera/effect/EffectBase;
    .restart local v2       #imageAndText:[Ljava/lang/Object;
    :cond_3
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 132
    :cond_4
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 155
    :cond_5
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    instance-of v4, v4, Lcom/android/camera/widget/ColorMultiplyTextView;

    if-eqz v4, :cond_6

    .line 156
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    check-cast v4, Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v4, v7}, Lcom/android/camera/widget/ColorMultiplyTextView;->applyColorMultiplication(Z)V

    .line 157
    :cond_6
    invoke-virtual {p2, v7}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3

    .line 164
    :cond_7
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->indicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    .line 176
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelAdapter;->notifyDataSetInvalidated()V

    .line 177
    return-void
.end method

.method public final setRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 184
    sget-object v0, Lcom/android/camera/effect/EffectPanelAdapter$1;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelAdapter;->notifyDataSetChanged()V

    .line 203
    return-void

    .line 188
    :pswitch_0
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    .line 191
    :cond_0
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->InversePortrait:Lcom/android/camera/rotate/UIRotation;

    .line 192
    goto :goto_0

    .line 195
    :pswitch_1
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    .line 198
    :cond_1
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public updateEffectList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    if-eqz p1, :cond_0

    .end local p1           #effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    :goto_0
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelAdapter;->notifyDataSetChanged()V

    .line 212
    return-void

    .line 210
    .restart local p1       #effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #effectList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
