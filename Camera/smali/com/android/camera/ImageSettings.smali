.class public final Lcom/android/camera/ImageSettings;
.super Ljava/lang/Object;
.source "ImageSettings.java"


# static fields
.field public static final SETTING_ALL:I = 0x7fffffff

.field public static final SETTING_BRIGHTNESS:I = 0x1

.field public static final SETTING_CONSTRAST:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final SETTING_IMAGE_PROPERTIES:I = 0x0

.field public static final SETTING_ISO:I = 0x4

.field public static final SETTING_SATURATION:I = 0x8

.field public static final SETTING_SHARPNESS:I = 0x10

.field public static final SETTING_WHITEBALANCE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ImageSettings"


# instance fields
.field public brightness:Ljava/lang/Float;

.field public final cameraActivity:Lcom/android/camera/HTCCamera;

.field public contrast:Ljava/lang/Float;

.field public iso:Ljava/lang/String;

.field public saturation:Ljava/lang/Float;

.field public sharpness:Ljava/lang/Float;

.field public whiteBalanceFront:Ljava/lang/String;

.field public whiteBalanceMain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x1b

    sput v0, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "cameraActivity"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/ImageSettings;I)V
    .locals 0
    .parameter "cameraActivity"
    .parameter "template"
    .parameter "target"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 52
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/ImageSettings;->copyFrom(Lcom/android/camera/ImageSettings;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ImageSettings;)V
    .locals 1
    .parameter "template"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 58
    const-string v0, "template"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    .line 62
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 63
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 64
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 66
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 67
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static backup(Lcom/android/camera/HTCCamera;I)Lcom/android/camera/ImageSettings;
    .locals 1
    .parameter "cameraActivity"
    .parameter "targets"

    .prologue
    .line 131
    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 132
    .local v0, settings:Lcom/android/camera/ImageSettings;
    invoke-virtual {v0, p1}, Lcom/android/camera/ImageSettings;->backup(I)V

    .line 133
    return-object v0
.end method

.method public static createBrightnessSetting(Lcom/android/camera/HTCCamera;F)Lcom/android/camera/ImageSettings;
    .locals 2
    .parameter "cameraActivity"
    .parameter "value"

    .prologue
    .line 226
    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 227
    .local v0, imageSettings:Lcom/android/camera/ImageSettings;
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 228
    return-object v0
.end method

.method public static createContrastSetting(Lcom/android/camera/HTCCamera;F)Lcom/android/camera/ImageSettings;
    .locals 2
    .parameter "cameraActivity"
    .parameter "value"

    .prologue
    .line 232
    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 233
    .local v0, imageSettings:Lcom/android/camera/ImageSettings;
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 234
    return-object v0
.end method

.method public static createIsoSetting(Lcom/android/camera/HTCCamera;Ljava/lang/String;)Lcom/android/camera/ImageSettings;
    .locals 1
    .parameter "cameraActivity"
    .parameter "value"

    .prologue
    .line 238
    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 239
    .local v0, imageSettings:Lcom/android/camera/ImageSettings;
    iput-object p1, v0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    .line 240
    return-object v0
.end method

.method public static createSaturationSetting(Lcom/android/camera/HTCCamera;F)Lcom/android/camera/ImageSettings;
    .locals 2
    .parameter "cameraActivity"
    .parameter "value"

    .prologue
    .line 244
    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 245
    .local v0, imageSettings:Lcom/android/camera/ImageSettings;
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 246
    return-object v0
.end method

.method public static createSharpnessSetting(Lcom/android/camera/HTCCamera;F)Lcom/android/camera/ImageSettings;
    .locals 2
    .parameter "cameraActivity"
    .parameter "value"

    .prologue
    .line 250
    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 251
    .local v0, imageSettings:Lcom/android/camera/ImageSettings;
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 252
    return-object v0
.end method

.method public static createWhiteBalanceSetting(Lcom/android/camera/HTCCamera;Ljava/lang/String;)Lcom/android/camera/ImageSettings;
    .locals 1
    .parameter "cameraActivity"
    .parameter "value"

    .prologue
    .line 256
    invoke-static {p0, p1, p1}, Lcom/android/camera/ImageSettings;->createWhiteBalanceSetting(Lcom/android/camera/HTCCamera;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/ImageSettings;

    move-result-object v0

    return-object v0
.end method

.method public static createWhiteBalanceSetting(Lcom/android/camera/HTCCamera;Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/ImageSettings;
    .locals 1
    .parameter "cameraActivity"
    .parameter "wbMain"
    .parameter "wbFront"

    .prologue
    .line 260
    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 261
    .local v0, imageSettings:Lcom/android/camera/ImageSettings;
    iput-object p2, v0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    .line 262
    iput-object p1, v0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 263
    return-object v0
.end method

.method public static getDefaultSettings(Lcom/android/camera/HTCCamera;I)Lcom/android/camera/ImageSettings;
    .locals 4
    .parameter "cameraActivity"
    .parameter "targets"

    .prologue
    const/4 v3, 0x0

    .line 272
    new-instance v1, Lcom/android/camera/ImageSettings;

    invoke-direct {v1, p0}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 273
    .local v1, settings:Lcom/android/camera/ImageSettings;
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 275
    .local v0, controller:Lcom/android/camera/CameraController;
    if-nez v0, :cond_1

    .line 277
    const-string v2, "ImageSettings"

    const-string v3, "getDefaultSettings error because there is no camera controller"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    :goto_0
    return-object v1

    .line 282
    :cond_1
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    .line 283
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 286
    :cond_2
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    .line 287
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 290
    :cond_3
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_4

    .line 291
    const-string v2, "auto"

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    .line 294
    :cond_4
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_5

    .line 295
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 298
    :cond_5
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_6

    .line 299
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 302
    :cond_6
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_0

    .line 304
    const-string v2, "auto"

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 305
    const-string v2, "auto"

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 76
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageSettings;->apply(I)V

    .line 77
    return-void
.end method

.method public apply(I)V
    .locals 4
    .parameter "settings"

    .prologue
    .line 80
    const-string v2, "ImageSettings"

    const-string v3, "apply image settings"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-nez p1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v1, Lcom/android/camera/ImageSettings;

    iget-object v2, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {v1, v2}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 90
    .local v1, imageSettings:Lcom/android/camera/ImageSettings;
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 94
    :cond_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_2

    .line 95
    iget-object v2, p0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 98
    :cond_2
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    .line 102
    :cond_3
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_4

    .line 103
    iget-object v2, p0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 106
    :cond_4
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_5

    .line 107
    iget-object v2, p0, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 110
    :cond_5
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_6

    .line 112
    iget-object v2, p0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 117
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v2

    const-class v3, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IImageSettingsController;

    .line 118
    .local v0, controller:Lcom/android/camera/IImageSettingsController;
    if-nez v0, :cond_7

    .line 120
    const-string v2, "ImageSettings"

    const-string v3, "Cannot apply image settings because there is no IImageSettingsController interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_7
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    goto :goto_0
.end method

.method public backup(I)V
    .locals 5
    .parameter "targets"

    .prologue
    .line 137
    const-string v3, "ImageSettings"

    const-string v4, "backup current image settings"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 141
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    if-nez v1, :cond_1

    .line 143
    const-string v3, "ImageSettings"

    const-string v4, "Cannot backup image settings because there is no camera thread"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v2

    .line 147
    .local v2, controller:Lcom/android/camera/CameraController;
    if-nez v2, :cond_2

    .line 149
    const-string v3, "ImageSettings"

    const-string v4, "Cannot backup image settings because there is no camera controller"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    .line 157
    .local v0, cameraSettings:Lcom/android/camera/CameraSettings;
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    .line 158
    iget-object v3, v0, Lcom/android/camera/CameraSettings;->brightness:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    iput-object v3, p0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 161
    :cond_3
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_4

    .line 162
    iget-object v3, v0, Lcom/android/camera/CameraSettings;->contrast:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    iput-object v3, p0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 165
    :cond_4
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_5

    .line 166
    iget-object v3, v0, Lcom/android/camera/CameraSettings;->iso:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    .line 169
    :cond_5
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_6

    .line 170
    iget-object v3, v0, Lcom/android/camera/CameraSettings;->saturation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    iput-object v3, p0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 173
    :cond_6
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_7

    .line 174
    iget-object v3, v0, Lcom/android/camera/CameraSettings;->sharpness:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    iput-object v3, p0, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 177
    :cond_7
    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, v0, Lcom/android/camera/CameraSettings;->mainWhiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 180
    iget-object v3, v0, Lcom/android/camera/CameraSettings;->frontWhiteBalance:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    goto :goto_0
.end method

.method public copyFrom(Lcom/android/camera/ImageSettings;I)V
    .locals 1
    .parameter "template"
    .parameter "targets"

    .prologue
    .line 190
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 198
    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 202
    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    .line 206
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 210
    :cond_5
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_6

    .line 211
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 214
    :cond_6
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    goto :goto_0
.end method
