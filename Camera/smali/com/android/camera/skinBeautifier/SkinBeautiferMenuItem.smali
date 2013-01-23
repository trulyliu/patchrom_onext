.class public Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "SkinBeautiferMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SkinBeautiferMenuItem"


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private final m_Items:[Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 3
    .parameter "cameraActivity"
    .parameter "titleResId"

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p2, v2}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;

    iput-object v0, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->m_Items:[Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;

    .line 101
    iput-object p1, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 104
    iget-object v0, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->m_Items:[Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;

    new-instance v1, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;

    invoke-direct {v1, p0}, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;-><init>(Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;)V

    aput-object v1, v0, v2

    .line 105
    iget-object v0, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->m_Items:[Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem$SkinBeautiferScaleMeterMenuItem;

    invoke-virtual {p0, v0}, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->setItems([Lcom/android/camera/menu/MenuItem;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->notifyItemContentClicked()V

    return-void
.end method


# virtual methods
.method public updateContent()V
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, skinBeautiferLevel:I
    iget-object v2, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->mainHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 123
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 135
    const-string v1, "0"

    .line 138
    .local v1, summary:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->setSummary(Ljava/lang/String;)V

    .line 139
    return-void

    .line 119
    .end local v1           #summary:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/CameraSettings;->frontHTCSkinBeautifierLevel:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 126
    :sswitch_0
    const-string v1, "1"

    .line 127
    .restart local v1       #summary:Ljava/lang/String;
    goto :goto_1

    .line 129
    .end local v1           #summary:Ljava/lang/String;
    :sswitch_1
    const-string v1, "2"

    .line 130
    .restart local v1       #summary:Ljava/lang/String;
    goto :goto_1

    .line 132
    .end local v1           #summary:Ljava/lang/String;
    :sswitch_2
    const-string v1, "3"

    .line 133
    .restart local v1       #summary:Ljava/lang/String;
    goto :goto_1

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_0
        0x32 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
