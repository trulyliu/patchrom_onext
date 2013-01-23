.class public Lcom/android/camera/menu/SettingsMenu;
.super Lcom/android/camera/menu/MenuListView;
.source "SettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/SettingsMenu$3;
    }
.end annotation


# static fields
.field public static final ITEM_ID_AUTO_FOCUS:I = 0x33

.field public static final ITEM_ID_AUTO_UPLOAD:I = 0x32

.field public static final ITEM_ID_CAMERA_EFFECTS:I = 0x1

.field public static final ITEM_ID_CAMERA_TYPE_FRONT:I = 0x15

.field public static final ITEM_ID_CAMERA_TYPE_MAIN:I = 0x14

.field public static final ITEM_ID_CAPTURE_MODE_GIF:I = 0xe

.field public static final ITEM_ID_CAPTURE_MODE_GROUP:I = 0xd

.field public static final ITEM_ID_CAPTURE_MODE_HDR:I = 0xc

.field public static final ITEM_ID_CAPTURE_MODE_NORMAL:I = 0xa

.field public static final ITEM_ID_CAPTURE_MODE_PANORAMA:I = 0xb

.field public static final ITEM_ID_CONTINUOUS_AUTO_FOCUS:I = 0x21

.field public static final ITEM_ID_CONTINUOUS_CAPTURE:I = 0x2f

.field public static final ITEM_ID_FACE_DETECTION:I = 0x1f

.field public static final ITEM_ID_GEO_TAGGING:I = 0x24

.field public static final ITEM_ID_OBJECT_TRACKING:I = 0x1e

.field public static final ITEM_ID_RECORD_WITH_AUDIO:I = 0x2e

.field public static final ITEM_ID_RESET_TO_DEFAULT:I = 0x3c

.field public static final ITEM_ID_SHUTTER_SOUND:I = 0x28

.field public static final ITEM_ID_SLOW_MOTION:I = 0x2d

.field public static final ITEM_ID_SMILE_CAPTURE:I = 0x20

.field public static final ITEM_ID_TAP_TO_CAPTURE:I = 0x30

.field public static final ITEM_ID_TAP_TO_CAPTURE_FRONT:I = 0x31

.field public static final ITEM_ID_WIDE_RATIO_PHOTO:I = 0x22

.field private static final TAG:Ljava/lang/String; = "SettingsMenu"


# instance fields
.field private m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

.field private m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

.field private m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

.field private m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

.field private m_CaptureModeItem:Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

.field private m_EffectManager:Lcom/android/camera/effect/IEffectManager;

.field private m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

.field private m_FrontFaceBeautifierMenuItem:Lcom/android/camera/menu/MenuItem;

.field private m_FrontWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

.field private m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

.field private m_IsItemInitialized:Z

.field private m_IsoItem:Lcom/android/camera/menu/MenuItem;

.field private m_Items:[Lcom/android/camera/menu/MenuItem;

.field private m_MainWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

.field private m_ObjectTrackingItem:Lcom/android/camera/menu/MenuItem;

.field private m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

.field private m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

.field private m_SaveMirrorImageItem:Lcom/android/camera/menu/MenuItem;

.field private m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

.field private m_Settings:Lcom/android/camera/Settings;

.field private m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

.field private m_SkinBeautyItem:Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;

.field private m_SlowMotionItem:Lcom/android/camera/menu/MenuItem;

.field private m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

.field private m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

.field private m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

.field private m_TapToCaptureFrontItem:Lcom/android/camera/menu/MenuItem;

.field private m_TapToCaptureItem:Lcom/android/camera/menu/MenuItem;

.field private m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/camera/menu/MenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/menu/MenuItem;

    iput-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    .line 119
    instance-of v0, p1, Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 121
    check-cast p1, Lcom/android/camera/HTCCamera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 122
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    .line 123
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    .line 127
    return-void

    .line 126
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/camera/menu/SettingsMenu;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method private resetToDefault()V
    .locals 6

    .prologue
    .line 621
    new-instance v3, Lcom/android/camera/menu/SettingsMenu$1;

    invoke-direct {v3, p0}, Lcom/android/camera/menu/SettingsMenu$1;-><init>(Lcom/android/camera/menu/SettingsMenu;)V

    .line 631
    .local v3, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/menu/SettingsMenu$2;

    invoke-direct {v2, p0}, Lcom/android/camera/menu/SettingsMenu$2;-><init>(Lcom/android/camera/menu/SettingsMenu;)V

    .line 640
    .local v2, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a00bb

    invoke-virtual {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0131

    invoke-virtual {v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20401f2

    invoke-virtual {v4, v5, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20401f3

    invoke-virtual {v4, v5, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 648
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v4

    const-class v5, Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {v4, v5}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IRotateDialogManager;

    .line 649
    .local v1, dialogManager:Lcom/android/camera/IRotateDialogManager;
    if-eqz v1, :cond_0

    .line 650
    invoke-virtual {v1, v0}, Lcom/android/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;)Lcom/android/camera/Handle;

    .line 653
    :goto_0
    return-void

    .line 652
    :cond_0
    const-string v4, "SettingsMenu"

    const-string v5, "resetToDefault() - Cannot find IRotateDialogManager interface"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAutoFocusRelatedItem()V
    .locals 7

    .prologue
    .line 883
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    .line 885
    .local v2, settings:Lcom/android/camera/CameraSettings;
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v3, v3, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/EffectBase;

    move-object v1, v3

    .line 888
    .local v1, currentScene:Lcom/android/camera/effect/EffectBase;
    :goto_0
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_0

    .line 889
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 892
    :cond_0
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_2

    .line 894
    sget-object v3, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v4, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v3, v4, :cond_1

    .line 895
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 897
    :cond_1
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 901
    :cond_2
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_3

    .line 903
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_6

    .line 904
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v3}, Lcom/android/camera/menu/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Duration;

    invoke-virtual {v3}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    instance-of v3, v1, Lcom/android/camera/effect/PanoramaScene;

    if-nez v3, :cond_5

    instance-of v3, v1, Lcom/android/camera/effect/SmartShotScene;

    if-nez v3, :cond_5

    const/4 v0, 0x1

    .line 912
    .local v0, canSmileCapture:Z
    :goto_1
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v3, v0}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 913
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 915
    .end local v0           #canSmileCapture:Z
    :cond_3
    return-void

    .line 885
    .end local v1           #currentScene:Lcom/android/camera/effect/EffectBase;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 904
    .restart local v1       #currentScene:Lcom/android/camera/effect/EffectBase;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 911
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #canSmileCapture:Z
    goto :goto_1
.end method

.method private updateAutoUploadItem()V
    .locals 5

    .prologue
    .line 861
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v2, :cond_1

    .line 862
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    const-string v3, "pref_auto_upload"

    const-string v4, "Off"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, service:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 868
    :cond_0
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    const v3, 0x7f0a00ba

    invoke-virtual {v2, v3}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    .line 874
    .end local v0           #service:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 870
    .restart local v0       #service:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    const-string v3, "pref_auto_upload_label"

    invoke-virtual {v2, v3}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, servicelabel:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v2, v1}, Lcom/android/camera/menu/MenuItem;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final updateCameraTypeItem()V
    .locals 7

    .prologue
    .line 675
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    if-nez v5, :cond_0

    .line 702
    :goto_0
    return-void

    .line 680
    :cond_0
    sget-object v6, Lcom/android/camera/menu/SettingsMenu$3;->$SwitchMap$com$android$camera$CameraType:[I

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 683
    :pswitch_0
    const/16 v1, 0x14

    .line 684
    .local v1, itemId:I
    const v4, 0x7f0a00cc

    .line 695
    .local v4, summary:I
    :goto_1
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v5}, Lcom/android/camera/menu/MenuItem;->getItems()[Lcom/android/camera/menu/MenuItem;

    move-result-object v3

    .line 696
    .local v3, subItems:[Lcom/android/camera/menu/MenuItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 698
    aget-object v2, v3, v0

    .line 699
    .local v2, subItem:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v2}, Lcom/android/camera/menu/MenuItem;->getId()I

    move-result v5

    if-ne v5, v1, :cond_1

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v2, v5}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 687
    .end local v0           #i:I
    .end local v1           #itemId:I
    .end local v2           #subItem:Lcom/android/camera/menu/MenuItem;
    .end local v3           #subItems:[Lcom/android/camera/menu/MenuItem;
    .end local v4           #summary:I
    :pswitch_1
    const/16 v1, 0x15

    .line 688
    .restart local v1       #itemId:I
    const v4, 0x7f0a00cd

    .line 689
    .restart local v4       #summary:I
    goto :goto_1

    .line 699
    .restart local v0       #i:I
    .restart local v2       #subItem:Lcom/android/camera/menu/MenuItem;
    .restart local v3       #subItems:[Lcom/android/camera/menu/MenuItem;
    :cond_1
    const/4 v5, 0x0

    goto :goto_3

    .line 701
    .end local v2           #subItem:Lcom/android/camera/menu/MenuItem;
    :cond_2
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    goto :goto_0

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateContinuousCaptureItem()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 710
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v4, :cond_3

    .line 712
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v4, v4, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 713
    .local v0, currentEffect:Lcom/android/camera/effect/EffectBase;
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v4, v4, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 720
    .local v1, currentScene:Lcom/android/camera/effect/EffectBase;
    :goto_0
    instance-of v4, v0, Lcom/android/camera/effect/NoneEffect;

    if-nez v4, :cond_4

    move v2, v5

    .line 721
    .local v2, hasEffect:Z
    :goto_1
    if-eqz v1, :cond_5

    instance-of v4, v1, Lcom/android/camera/effect/AutoScene;

    if-nez v4, :cond_5

    instance-of v4, v1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-nez v4, :cond_5

    move v3, v5

    .line 726
    .local v3, hasScene:Z
    :goto_2
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v4, :cond_0

    .line 727
    iget-object v7, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->selfTimerInterval:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Duration;

    invoke-virtual {v4}, Lcom/android/camera/Duration;->getSeconds()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_6

    :goto_3
    invoke-virtual {v7, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 728
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraType;

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 729
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f0a006c

    :goto_4
    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    .line 733
    :cond_0
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v4, :cond_1

    .line 734
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 737
    :cond_1
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v4, :cond_2

    .line 738
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 739
    :cond_2
    return-void

    .line 717
    .end local v0           #currentEffect:Lcom/android/camera/effect/EffectBase;
    .end local v1           #currentScene:Lcom/android/camera/effect/EffectBase;
    .end local v2           #hasEffect:Z
    .end local v3           #hasScene:Z
    :cond_3
    const/4 v0, 0x0

    .line 718
    .restart local v0       #currentEffect:Lcom/android/camera/effect/EffectBase;
    const/4 v1, 0x0

    .restart local v1       #currentScene:Lcom/android/camera/effect/EffectBase;
    goto/16 :goto_0

    :cond_4
    move v2, v6

    .line 720
    goto/16 :goto_1

    .restart local v2       #hasEffect:Z
    :cond_5
    move v3, v6

    .line 721
    goto/16 :goto_2

    .restart local v3       #hasScene:Z
    :cond_6
    move v5, v6

    .line 727
    goto :goto_3

    .line 729
    :cond_7
    const v4, 0x7f0a006d

    goto :goto_4
.end method

.method private updateDisabledItems()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 747
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v8

    .line 750
    .local v8, settings:Lcom/android/camera/CameraSettings;
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v9, :cond_13

    .line 752
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v9, v9, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    .line 753
    .local v2, currentEffect:Lcom/android/camera/effect/EffectBase;
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v9, v9, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/EffectBase;

    .line 760
    .local v3, currentScene:Lcom/android/camera/effect/EffectBase;
    :goto_0
    move-object v4, v3

    .line 761
    .local v4, currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    if-eqz v4, :cond_0

    instance-of v9, v4, Lcom/android/camera/effect/AutoScene;

    if-eqz v9, :cond_1

    .line 762
    :cond_0
    move-object v4, v2

    .line 764
    :cond_1
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v5

    .line 767
    .local v5, disabledImageSettings:I
    :goto_1
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_2

    .line 768
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    iget-object v9, v8, Lcom/android/camera/CameraSettings;->isObjectTrackingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 769
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/CameraType;

    invoke-virtual {v9}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v9

    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 773
    :cond_2
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_3

    .line 774
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    iget-object v9, v8, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_15

    move v9, v11

    :goto_2
    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 776
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    .line 777
    .local v1, controller:Lcom/android/camera/CameraController;
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    if-nez v1, :cond_16

    move v9, v10

    :goto_3
    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 781
    .end local v1           #controller:Lcom/android/camera/CameraController;
    :cond_3
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_4

    .line 782
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    iget-object v9, v8, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_17

    move v9, v11

    :goto_4
    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 785
    :cond_4
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_5

    .line 786
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    iget-object v9, v8, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_18

    iget-object v9, v8, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_18

    move v9, v11

    :goto_5
    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 789
    :cond_5
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_6

    .line 790
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    and-int/lit8 v9, v5, 0x4

    if-nez v9, :cond_19

    move v9, v11

    :goto_6
    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 791
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/CameraType;

    invoke-virtual {v9}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v9

    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 795
    :cond_6
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_7

    .line 796
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    sget-object v12, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v12}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v9, v12}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 801
    :cond_7
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/CameraType;

    invoke-virtual {v9}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v6

    .line 802
    .local v6, isMainCamera:Z
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_8

    .line 803
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    and-int/lit8 v9, v5, 0x20

    if-nez v9, :cond_1a

    move v9, v11

    :goto_7
    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 804
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v9, v6}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 806
    :cond_8
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_9

    .line 807
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    and-int/lit8 v9, v5, 0x20

    if-nez v9, :cond_1b

    move v9, v11

    :goto_8
    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 808
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    if-nez v6, :cond_1c

    move v9, v11

    :goto_9
    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 812
    :cond_9
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_a

    .line 813
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v9, v6}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 816
    :cond_a
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_b

    .line 817
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/android/camera/menu/MenuItem;

    if-nez v6, :cond_1d

    move v9, v11

    :goto_a
    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 820
    :cond_b
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_FrontFaceBeautifierMenuItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_c

    .line 821
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_FrontFaceBeautifierMenuItem:Lcom/android/camera/menu/MenuItem;

    if-nez v6, :cond_1e

    move v9, v11

    :goto_b
    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 824
    :cond_c
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_d

    .line 825
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    sget v9, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    and-int/2addr v9, v5

    if-nez v9, :cond_1f

    move v9, v11

    :goto_c
    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 829
    :cond_d
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_ObjectTrackingItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_e

    .line 830
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_ObjectTrackingItem:Lcom/android/camera/menu/MenuItem;

    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/CameraType;

    invoke-virtual {v9}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v9

    invoke-virtual {v12, v9}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 833
    :cond_e
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    if-eqz v9, :cond_f

    .line 834
    iget-object v12, p0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->isSelfTimerDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_20

    move v9, v11

    :goto_d
    invoke-virtual {v12, v9}, Lcom/android/camera/menu/SelfTimerMenuItem;->setEnabled(Z)V

    .line 837
    :cond_f
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_SkinBeautyItem:Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;

    if-eqz v9, :cond_10

    .line 838
    instance-of v9, v3, Lcom/android/camera/effect/AutoScene;

    if-eqz v9, :cond_21

    sget v9, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    and-int/2addr v9, v5

    if-nez v9, :cond_21

    move v7, v11

    .line 840
    .local v7, isUseSkinBeauty:Z
    :goto_e
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_SkinBeautyItem:Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;

    invoke-virtual {v9, v7}, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;->setEnabled(Z)V

    .line 844
    .end local v7           #isUseSkinBeauty:Z
    :cond_10
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_11

    .line 845
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    iget-object v10, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v10}, Lcom/android/camera/HTCCamera;->isActionScreenEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 848
    :cond_11
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_SaveMirrorImageItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v9, :cond_12

    .line 850
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/CameraType;

    invoke-virtual {v9}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v0

    .line 851
    .local v0, bIs2ndCam:Z
    iget-object v9, p0, Lcom/android/camera/menu/SettingsMenu;->m_SaveMirrorImageItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v9, v0}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 853
    .end local v0           #bIs2ndCam:Z
    :cond_12
    return-void

    .line 757
    .end local v2           #currentEffect:Lcom/android/camera/effect/EffectBase;
    .end local v3           #currentScene:Lcom/android/camera/effect/EffectBase;
    .end local v4           #currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    .end local v5           #disabledImageSettings:I
    .end local v6           #isMainCamera:Z
    :cond_13
    const/4 v2, 0x0

    .line 758
    .restart local v2       #currentEffect:Lcom/android/camera/effect/EffectBase;
    const/4 v3, 0x0

    .restart local v3       #currentScene:Lcom/android/camera/effect/EffectBase;
    goto/16 :goto_0

    .restart local v4       #currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    :cond_14
    move v5, v10

    .line 764
    goto/16 :goto_1

    .restart local v5       #disabledImageSettings:I
    :cond_15
    move v9, v10

    .line 774
    goto/16 :goto_2

    .line 777
    .restart local v1       #controller:Lcom/android/camera/CameraController;
    :cond_16
    invoke-virtual {v1}, Lcom/android/camera/CameraController;->isVideoStabilizationSupported()Z

    move-result v9

    goto/16 :goto_3

    .end local v1           #controller:Lcom/android/camera/CameraController;
    :cond_17
    move v9, v10

    .line 782
    goto/16 :goto_4

    :cond_18
    move v9, v10

    .line 786
    goto/16 :goto_5

    :cond_19
    move v9, v10

    .line 790
    goto/16 :goto_6

    .restart local v6       #isMainCamera:Z
    :cond_1a
    move v9, v10

    .line 803
    goto/16 :goto_7

    :cond_1b
    move v9, v10

    .line 807
    goto/16 :goto_8

    :cond_1c
    move v9, v10

    .line 808
    goto/16 :goto_9

    :cond_1d
    move v9, v10

    .line 817
    goto/16 :goto_a

    :cond_1e
    move v9, v10

    .line 821
    goto/16 :goto_b

    :cond_1f
    move v9, v10

    .line 825
    goto/16 :goto_c

    :cond_20
    move v9, v10

    .line 834
    goto :goto_d

    :cond_21
    move v7, v10

    .line 838
    goto :goto_e
.end method


# virtual methods
.method public initializeMenuItems()V
    .locals 17

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsItemInitialized:Z

    if-eqz v1, :cond_0

    .line 530
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsItemInitialized:Z

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/menu/SettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HTCCamera;

    .line 141
    .local v2, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v16

    .line 142
    .local v16, startMode:Lcom/android/camera/CameraStartMode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    .line 143
    .local v3, settings:Lcom/android/camera/Settings;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v12, itemsL1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/menu/MenuItem;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v13, itemsL2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/menu/MenuItem;>;"
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_1

    .line 174
    new-instance v1, Lcom/android/camera/menu/SelfTimerMenuItem;

    const v4, 0x7f0a00c1

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/SelfTimerMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/FeatureConfig;->isHTCSkinBeautiferSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    new-instance v1, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;

    const v4, 0x7f0a00c2

    invoke-direct {v1, v2, v4}, Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SkinBeautyItem:Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SkinBeautyItem:Lcom/android/camera/skinBeautifier/SkinBeautiferMenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_2
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_3

    .line 193
    new-instance v1, Lcom/android/camera/menu/ResolutionMenuItem;

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    const v5, 0x7f0a00d2

    invoke-direct {v1, v2, v4, v5}, Lcom/android/camera/menu/ResolutionMenuItem;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_3
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_4

    .line 204
    new-instance v1, Lcom/android/camera/menu/ResolutionMenuItem;

    sget-object v4, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    const v5, 0x7f0a00d1

    invoke-direct {v1, v2, v4, v5}, Lcom/android/camera/menu/ResolutionMenuItem;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;I)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_4
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    if-nez v1, :cond_5

    .line 214
    new-instance v1, Lcom/android/camera/menu/ListPreferenceMenuItem;

    const-string v4, "pref_camera_review_duration"

    const v5, 0x7f0a0092

    const v6, 0x7f070001

    const/high16 v7, 0x7f07

    const-string v8, "0s"

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/menu/ListPreferenceMenuItem;-><init>(Landroid/content/Context;Lcom/android/camera/Settings;Ljava/lang/String;IIILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_5
    new-instance v1, Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    const v4, 0x7f0a00ce

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v1, Lcom/android/camera/menu/CameraIsoMenuItem;

    const v4, 0x7f0a00d3

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/CameraIsoMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v1, v1, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_6

    .line 240
    new-instance v1, Lcom/android/camera/menu/WhiteBalanceMenuItem;

    sget-object v4, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    const v5, 0x7f0a00cf

    invoke-direct {v1, v2, v4, v5}, Lcom/android/camera/menu/WhiteBalanceMenuItem;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_6
    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    iget-boolean v1, v1, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_7

    .line 247
    new-instance v1, Lcom/android/camera/menu/WhiteBalanceMenuItem;

    sget-object v4, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    const v5, 0x7f0a00cf

    invoke-direct {v1, v2, v4, v5}, Lcom/android/camera/menu/WhiteBalanceMenuItem;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_7
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v1

    if-nez v1, :cond_8

    .line 256
    new-instance v1, Lcom/android/camera/menu/CameraStorageLocationMenuItem;

    const v4, 0x7f0a00a5

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/CameraStorageLocationMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v1}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v9

    .line 266
    .local v9, hasContinuousBurst:Z
    if-eqz v9, :cond_9

    .line 268
    new-instance v1, Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00d9

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 273
    new-instance v11, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v1, "pref_continuous_burst"

    const v4, 0x7f0a00d9

    const/4 v5, 0x1

    invoke-direct {v11, v3, v1, v4, v5}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    .line 278
    .local v11, itemL2:Lcom/android/camera/menu/MenuItem;
    const/16 v1, 0x2f

    invoke-virtual {v11, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 279
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_continuous_burst_limit"

    const v5, 0x7f0a00da

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_continuous_burst_auto_review"

    const v5, 0x7f0a00db

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1, v13}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    .line 304
    .end local v11           #itemL2:Lcom/android/camera/menu/MenuItem;
    :cond_9
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_e

    .line 306
    new-instance v10, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00d4

    const/4 v4, 0x0

    invoke-direct {v10, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 307
    .local v10, itemL1:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 334
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 336
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_auto_focus"

    const v5, 0x7f0a00ad

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x33

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_a
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_tap_capture"

    const v5, 0x7f0a00ae

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/android/camera/menu/MenuItem;

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_tap_capture_front"

    const v5, 0x7f0a00ae

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/android/camera/menu/MenuItem;

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x31

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_face_detection"

    const v5, 0x7f0a00d7

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x1f

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-static {}, Lcom/android/camera/FeatureConfig;->isFrontCameraFaceBeautifierSupported()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 375
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_face_beautifier_front"

    const v5, 0x7f0a00e5

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FrontFaceBeautifierMenuItem:Lcom/android/camera/menu/MenuItem;

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FrontFaceBeautifierMenuItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_b
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_smile_capture"

    const v5, 0x7f0a00d8

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v11, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v1, "pref_camera_geo_tagging"

    const v4, 0x7f0a00e2

    sget-boolean v5, Lcom/android/camera/CameraSettings$DefaultValues;->isGeoTaggingEnabled:Z

    invoke-direct {v11, v3, v1, v4, v5}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    .line 398
    .restart local v11       #itemL2:Lcom/android/camera/menu/MenuItem;
    const/16 v1, 0x24

    invoke-virtual {v11, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 399
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v1

    if-nez v1, :cond_c

    .line 404
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_post_processing"

    const v5, 0x7f0a00e3

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSaveMirrorImage()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 414
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_save_mirror_image"

    const v5, 0x7f0a00e4

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SaveMirrorImageItem:Lcom/android/camera/menu/MenuItem;

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SaveMirrorImageItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_d
    invoke-virtual {v10, v13}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    .line 428
    .end local v10           #itemL1:Lcom/android/camera/menu/MenuItem;
    .end local v11           #itemL2:Lcom/android/camera/menu/MenuItem;
    :cond_e
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_10

    .line 430
    new-instance v10, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00e6

    const/4 v4, 0x0

    invoke-direct {v10, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 431
    .restart local v10       #itemL1:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 435
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_video_stabilization"

    const v5, 0x7f0a00e7

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_record_with_audio"

    const v5, 0x7f0a00e9

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 454
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_stereo_recording"

    const v5, 0x7f0a00ea

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_f
    invoke-virtual {v10, v13}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    .line 468
    .end local v10           #itemL1:Lcom/android/camera/menu/MenuItem;
    :cond_10
    new-instance v10, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00eb

    const/4 v4, 0x0

    invoke-direct {v10, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 469
    .restart local v10       #itemL1:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 472
    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_11

    sget-object v1, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_11

    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_11

    .line 474
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_grid"

    const v5, 0x7f0a00ed

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_11
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-nez v1, :cond_12

    .line 484
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_play_shutter_sound"

    const v5, 0x7f0a00ec

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_12
    invoke-virtual {v10, v13}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    .line 496
    invoke-virtual {v10}, Lcom/android/camera/menu/MenuItem;->getItems()[Lcom/android/camera/menu/MenuItem;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_13

    .line 497
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_13
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 502
    new-instance v1, Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00ee

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    .line 503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x32

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    const-string v1, "pref_auto_upload"

    const-string v4, "Off"

    invoke-virtual {v3, v1, v4}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 508
    .local v14, service:Ljava/lang/String;
    if-eqz v14, :cond_14

    const-string v1, ""

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "null"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "Off"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 513
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00ba

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    .line 522
    .end local v14           #service:Ljava/lang/String;
    :cond_15
    :goto_1
    new-instance v10, Lcom/android/camera/menu/MenuItem;

    .end local v10           #itemL1:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0a00ef

    const/4 v4, 0x0

    invoke-direct {v10, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 523
    .restart local v10       #itemL1:Lcom/android/camera/menu/MenuItem;
    const/16 v1, 0x3c

    invoke-virtual {v10, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 524
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_Items:[Lcom/android/camera/menu/MenuItem;

    .line 528
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_Items:[Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_Items:[Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/SettingsMenu;->setItems([Lcom/android/camera/menu/MenuItem;)V

    goto/16 :goto_0

    .line 515
    .restart local v14       #service:Ljava/lang/String;
    :cond_16
    const-string v1, "pref_auto_upload_label"

    invoke-virtual {v3, v1}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 516
    .local v15, servicelabel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1, v15}, Lcom/android/camera/menu/MenuItem;->setSummary(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V
    .locals 4
    .parameter "item"
    .parameter "index"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 539
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    .line 540
    .local v0, settings:Lcom/android/camera/CameraSettings;
    sparse-switch p3, :sswitch_data_0

    .line 612
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/menu/MenuListView;->onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V

    .line 613
    return-void

    .line 544
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateAutoFocusRelatedItem()V

    goto :goto_0

    .line 550
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v1}, Lcom/android/camera/AutoUploader;->ShowAutoUploadSetting()V

    goto :goto_0

    .line 556
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    goto :goto_0

    .line 565
    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->restartPreview()Z

    .line 566
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 567
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    goto :goto_0

    .line 573
    :sswitch_4
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->restartPreview()Z

    .line 574
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 575
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isObjectTrackingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    goto :goto_0

    .line 581
    :sswitch_5
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateDisabledItems()V

    goto :goto_0

    .line 587
    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->resetToDefault()V

    goto :goto_0

    .line 593
    :sswitch_7
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    goto :goto_0

    .line 600
    :sswitch_8
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateDisabledItems()V

    goto :goto_0

    .line 606
    :sswitch_9
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateContinuousCaptureItem()V

    goto :goto_0

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_4
        0x1f -> :sswitch_3
        0x21 -> :sswitch_2
        0x28 -> :sswitch_7
        0x2d -> :sswitch_8
        0x2e -> :sswitch_5
        0x2f -> :sswitch_9
        0x32 -> :sswitch_1
        0x33 -> :sswitch_0
        0x3c -> :sswitch_6
    .end sparse-switch
.end method

.method public final setCaptureModeItemVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CaptureModeItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CaptureModeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v0, p1}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 662
    :cond_0
    return-void
.end method

.method public final setSlowMotionItemVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_SlowMotionItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_SlowMotionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v0, p1}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 667
    :cond_0
    return-void
.end method

.method public updateItemContents()V
    .locals 0

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/android/camera/menu/SettingsMenu;->beginUpdate()V

    .line 927
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateAutoFocusRelatedItem()V

    .line 928
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateCameraTypeItem()V

    .line 929
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateContinuousCaptureItem()V

    .line 930
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateDisabledItems()V

    .line 931
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateAutoUploadItem()V

    .line 932
    invoke-super {p0}, Lcom/android/camera/menu/MenuListView;->updateItemContents()V

    .line 935
    invoke-virtual {p0}, Lcom/android/camera/menu/SettingsMenu;->endUpdate()V

    .line 936
    return-void
.end method
