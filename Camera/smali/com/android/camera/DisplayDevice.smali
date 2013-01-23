.class public Lcom/android/camera/DisplayDevice;
.super Ljava/lang/Object;
.source "DisplayDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/DisplayDevice$FrontCameraPosition;,
        Lcom/android/camera/DisplayDevice$CustomMMS;,
        Lcom/android/camera/DisplayDevice$CaptureButton;,
        Lcom/android/camera/DisplayDevice$ScreenRatio;,
        Lcom/android/camera/DisplayDevice$Resolution;
    }
.end annotation


# static fields
.field public static BUTTON_SIZE:I

.field public static CAMERA_PIC_SIZE_FOR_SQUARE:I

.field public static CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

.field public static CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

.field public static CAMERA_PREVIEW_WIDTH_FOR_4x3:I

.field public static CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

.field public static CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

.field public static DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

.field public static DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

.field public static DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

.field public static DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

.field public static DEFAULT_3D_CAMERA_CAPTURE_HEIGHT:I

.field public static DEFAULT_3D_CAMERA_CAPTURE_WIDTH:I

.field public static DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

.field public static DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

.field public static DIALOG_HEIGHT:I

.field public static DIALOG_WIDTH:I

.field private static FOCUS_HEIGHT:I

.field private static FOCUS_WIDTH:I

.field public static HINT_LANDSCAPE_LEFT_PADDING:I

.field public static HINT_PORTRAIT_LEFT_PADDING:I

.field public static HINT_TOP_PADDING:I

.field public static INDICATORE_LAYOUT_MARGIN_NO_ZOOM_BAR:I

.field public static INDICATORE_LAYOUT_MARGIN_WITH_ZOOM_BAR:I

.field public static MARKER_HEIGHT:I

.field public static final NOT_SENSE_2_0:Z

.field public static REMAINING_LAYOUT_MARGIN_NO_EFFECT_BAR:I

.field public static REMAINING_LAYOUT_MARGIN_WITH_EFFECT_BAR:I

.field public static REMAINING_TEXT_MARGIN:I

.field public static REMAINING_TEXT_PADDING:I

.field public static final SCREEN_CENTER_X:I

.field public static final SCREEN_CENTER_Y:I

.field public static SCREEN_HEIGHT:I

.field public static SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

.field public static SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

.field public static SCREEN_WIDTH:I

.field public static SELF_PORTRAIT_HINT_WIDTH_FULL_SCREEN:I

.field public static final SUPPORT_GPS_INDICATOR:Z

.field public static SWITCH_BUTTON_MARGIN_NO_ZOOM_BAR:I

.field public static SWITCH_BUTTON_MARGIN_WITH_ZOOM_BAR:I

.field public static TIMER_BASE_SELF_TIMER:I

.field public static WHEEL_BOUNCING_PADDING:I

.field public static WHEEL_ROTATE_PADDING:I

.field public static WHEEL_VSIBLE_AREA_PADDING:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/16 v5, 0x2d0

    const/4 v4, 0x2

    const/16 v3, 0x1e0

    const/4 v1, 0x0

    .line 29
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 31
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_3_2:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 33
    sget-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->Other:Lcom/android/camera/DisplayDevice$CaptureButton;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    .line 35
    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Default:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    .line 37
    sput v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 39
    sput v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 44
    sput v1, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 46
    sput v1, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 48
    sput v1, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 50
    sput v1, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 52
    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 54
    const/16 v0, 0x180

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 56
    const/16 v0, 0x780

    sput v0, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_CAPTURE_WIDTH:I

    .line 58
    const/16 v0, 0x438

    sput v0, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_CAPTURE_HEIGHT:I

    .line 60
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

    .line 62
    sput v5, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

    .line 64
    sput v1, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 66
    sput v1, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    .line 68
    sput v1, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 70
    sput v1, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 72
    sput v1, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 74
    const/16 v0, 0x12c

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 76
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 79
    const/16 v0, 0x1c

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 81
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 83
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 87
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 89
    const/16 v0, 0xa0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 91
    const/16 v0, 0x14

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 94
    const/16 v0, 0x3c

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_LAYOUT_MARGIN_WITH_EFFECT_BAR:I

    .line 96
    sput v1, Lcom/android/camera/DisplayDevice;->REMAINING_LAYOUT_MARGIN_NO_EFFECT_BAR:I

    .line 98
    const/16 v0, 0x3c

    sput v0, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_WITH_ZOOM_BAR:I

    .line 100
    sput v1, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_NO_ZOOM_BAR:I

    .line 102
    const/16 v0, 0x1f

    sput v0, Lcom/android/camera/DisplayDevice;->SWITCH_BUTTON_MARGIN_WITH_ZOOM_BAR:I

    .line 104
    sput v1, Lcom/android/camera/DisplayDevice;->SWITCH_BUTTON_MARGIN_NO_ZOOM_BAR:I

    .line 106
    const/16 v0, 0xac

    sput v0, Lcom/android/camera/DisplayDevice;->TIMER_BASE_SELF_TIMER:I

    .line 110
    const/16 v0, 0x2e4

    sput v0, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_WIDTH_FULL_SCREEN:I

    .line 113
    sput v1, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    .line 122
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    .line 124
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x90

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x39

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x18

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x58

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x59

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x62

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7e

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x31

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x32

    if-ne v0, v2, :cond_2

    .line 138
    :cond_0
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 139
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_3_2:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 140
    sput v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 141
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 142
    sput v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 143
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 144
    const/16 v0, 0x180

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 145
    const/16 v0, 0x120

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 146
    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 148
    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 149
    const/16 v0, 0x1a0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 151
    const/16 v0, 0x34

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 154
    sput v1, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_NO_ZOOM_BAR:I

    .line 155
    const/16 v0, 0x23

    sput v0, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_WITH_ZOOM_BAR:I

    .line 157
    sput v6, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 158
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 159
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 160
    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 163
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 164
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 165
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 168
    const/16 v0, 0xa0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 169
    const/16 v0, 0x32

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 170
    const/16 v0, 0x14

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 174
    const/16 v0, 0xe

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    .line 520
    :goto_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    .line 521
    sget-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    .line 548
    :goto_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_14

    .line 549
    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->ATT:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    .line 569
    :goto_3
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_X:I

    .line 570
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    .line 581
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    .line 603
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    return-void

    :cond_1
    move v0, v1

    .line 122
    goto/16 :goto_0

    .line 178
    :cond_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xb

    if-eq v0, v2, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xc

    if-ne v0, v2, :cond_4

    .line 181
    :cond_3
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->QVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 182
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_4_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 183
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 184
    const/16 v0, 0xf0

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 185
    const/16 v0, 0x120

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 186
    const/16 v0, 0xc0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 187
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 188
    const/16 v0, 0xf0

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 189
    const/16 v0, 0xf0

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 191
    const/16 v0, 0x24

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 193
    sput v6, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 194
    const/16 v0, 0xf0

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 195
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 196
    const/16 v0, 0x32

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 199
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 200
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 201
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 204
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 205
    const/16 v0, 0x1e

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 206
    const/16 v0, 0x14

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    goto/16 :goto_1

    .line 209
    :cond_4
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x78

    if-ne v0, v2, :cond_5

    .line 210
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->WQVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 211
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 212
    const/16 v0, 0x190

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 213
    const/16 v0, 0xf0

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 214
    const/16 v0, 0x190

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 215
    const/16 v0, 0xf0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 216
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 217
    const/16 v0, 0xf0

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 218
    const/16 v0, 0xf0

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 220
    const/16 v0, 0x24

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 222
    sput v6, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 223
    const/16 v0, 0xf0

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 224
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 225
    const/16 v0, 0x32

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 228
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 229
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 230
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 233
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 234
    const/16 v0, 0x32

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 235
    const/16 v0, 0x14

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    goto/16 :goto_1

    .line 238
    :cond_5
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x28

    if-eq v0, v2, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x21

    if-eq v0, v2, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x22

    if-ne v0, v2, :cond_7

    .line 242
    :cond_6
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->WSVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 243
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 244
    const/16 v0, 0x400

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 245
    const/16 v0, 0x260

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 246
    const/16 v0, 0x400

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 247
    const/16 v0, 0x260

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 249
    const/16 v0, 0x3c0

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 250
    sput v5, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 251
    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 253
    const/16 v0, 0x4d0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 254
    sput v5, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 256
    const/16 v0, 0x4c

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 258
    sput v6, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 259
    sput v3, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 260
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 261
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 264
    const/16 v0, 0xf

    sput v0, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_NO_ZOOM_BAR:I

    .line 265
    const/16 v0, 0xf

    sput v0, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_WITH_ZOOM_BAR:I

    .line 268
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 269
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 270
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 273
    const/16 v0, 0xd0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 274
    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 275
    const/16 v0, 0x30

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 279
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    goto/16 :goto_1

    .line 282
    :cond_7
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x9f

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x2aa

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x95

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x96

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x97

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x88

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x89

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x50

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe1

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x2d7

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe0

    if-eq v0, v2, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x2d8

    if-ne v0, v2, :cond_9

    .line 299
    :cond_8
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 300
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 301
    const/16 v0, 0x3c0

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 302
    const/16 v0, 0x21c

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 303
    const/16 v0, 0x3c0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 304
    const/16 v0, 0x220

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 306
    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 307
    sput v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 308
    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 311
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 312
    sput v5, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 314
    const/16 v0, 0x4c

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 316
    sput v6, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 317
    sput v3, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 318
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 319
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 322
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 323
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 324
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 327
    const/16 v0, 0xd0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 328
    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 329
    const/16 v0, 0x30

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 333
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    goto/16 :goto_1

    .line 337
    :cond_9
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-eq v0, v2, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x49

    if-eq v0, v2, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x26

    if-eq v0, v2, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x147

    if-eq v0, v2, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x25

    if-eq v0, v2, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x24

    if-eq v0, v2, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x14a

    if-eq v0, v2, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x146

    if-eq v0, v2, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x149

    if-eq v0, v2, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x43

    if-ne v0, v2, :cond_b

    .line 349
    :cond_a
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->HD:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 350
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 351
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 352
    sput v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 353
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 354
    sput v5, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 356
    const/16 v0, 0x3c0

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 357
    sput v5, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 358
    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 361
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 362
    sput v5, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 364
    const/16 v0, 0x4c

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 366
    sput v6, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 367
    sput v3, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 368
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 369
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 372
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 373
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 374
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 377
    const/16 v0, 0xd0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 378
    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 379
    const/16 v0, 0x30

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 383
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    goto/16 :goto_1

    .line 386
    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 387
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->FHD:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 388
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 389
    const/16 v0, 0x780

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 390
    const/16 v0, 0x438

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 391
    const/16 v0, 0x780

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 392
    const/16 v0, 0x440

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 394
    const/16 v0, 0x5a0

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 395
    const/16 v0, 0x440

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 396
    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 399
    const/16 v0, 0x780

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 400
    const/16 v0, 0x440

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 402
    const/16 v0, 0x4c

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 404
    sput v6, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 405
    sput v3, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 406
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 407
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 410
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 411
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 412
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 415
    const/16 v0, 0xd0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 416
    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 417
    const/16 v0, 0x30

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 421
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    goto/16 :goto_1

    .line 424
    :cond_c
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_d

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x81

    if-eq v0, v2, :cond_d

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xaf

    if-eq v0, v2, :cond_d

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xdd

    if-ne v0, v2, :cond_e

    .line 428
    :cond_d
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->WXGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 429
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_10:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 430
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 431
    const/16 v0, 0x2f0

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 432
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 433
    const/16 v0, 0x2f0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 435
    const/16 v0, 0x3c0

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 436
    sput v5, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 437
    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 439
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 440
    const/16 v0, 0x2f0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 442
    const/16 v0, 0x4c

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 444
    sput v6, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 445
    sput v3, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 446
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 447
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 450
    sput v1, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_NO_ZOOM_BAR:I

    .line 451
    const/16 v0, 0x28

    sput v0, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_WITH_ZOOM_BAR:I

    .line 454
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 455
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 456
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 459
    const/16 v0, 0xd0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 460
    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 461
    const/16 v0, 0x30

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 465
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    goto/16 :goto_1

    .line 470
    :cond_e
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 471
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 472
    const/16 v0, 0x320

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 473
    sput v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 474
    const/16 v0, 0x320

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 475
    sput v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 478
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-eq v0, v1, :cond_f

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_10

    .line 481
    :cond_f
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 482
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 483
    sput v5, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 487
    :cond_10
    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 488
    const/16 v0, 0x180

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 490
    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 491
    sput v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 492
    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 494
    const/16 v0, 0x4c

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 496
    sput v6, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 497
    sput v3, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 498
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 499
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 502
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 503
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 504
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 507
    const/16 v0, 0xd0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 508
    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 509
    const/16 v0, 0x30

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 513
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    goto/16 :goto_1

    .line 522
    :cond_11
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_12

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_12

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-eq v0, v1, :cond_12

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-eq v0, v1, :cond_12

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_12

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_12

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_12

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_12

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_12

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_12

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_13

    .line 534
    :cond_12
    sget-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    goto/16 :goto_2

    .line 536
    :cond_13
    sget-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->Other:Lcom/android/camera/DisplayDevice$CaptureButton;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    goto/16 :goto_2

    .line 550
    :cond_14
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_15

    .line 551
    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Sprint:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    goto/16 :goto_3

    .line 552
    :cond_15
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_16

    .line 553
    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    goto/16 :goto_3

    .line 555
    :cond_16
    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Default:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    goto/16 :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DisablePen()Z
    .locals 2

    .prologue
    .line 1430
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 1433
    :cond_0
    const/4 v0, 0x1

    .line 1435
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static EnableGeoTagByDefault()Z
    .locals 2

    .prologue
    .line 1515
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1517
    :cond_0
    const/4 v0, 0x0

    .line 1519
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static NoResolutionChoiceIn2ndCam()Z
    .locals 2

    .prologue
    .line 1253
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 1258
    :cond_0
    const/4 v0, 0x1

    .line 1260
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static apply720PPreview()Z
    .locals 2

    .prologue
    .line 1241
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdd

    if-ne v0, v1, :cond_1

    .line 1247
    :cond_0
    const/4 v0, 0x1

    .line 1249
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canCancelFocus()Z
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x1

    return v0
.end method

.method public static canChangeFrameRate()Z
    .locals 2

    .prologue
    .line 1600
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 1601
    const/4 v0, 0x1

    .line 1603
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static captrueFullSize()Z
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x1

    return v0
.end method

.method public static contactsNoStorage()Z
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x1

    return v0
.end method

.method public static forceFocusSound()Z
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method public static forceSutterSound()Z
    .locals 2

    .prologue
    .line 889
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 899
    :cond_0
    const/4 v0, 0x1

    .line 901
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFocusHeight(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 607
    sget v1, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    if-gez v1, :cond_0

    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 610
    .local v0, image:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    .line 611
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    .line 615
    .end local v0           #image:Landroid/graphics/drawable/Drawable;
    :cond_0
    sget v1, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    return v1
.end method

.method public static getFocusWidth(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 585
    sget v1, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    if-gez v1, :cond_0

    .line 587
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 588
    .local v0, image:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    .line 589
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    .line 593
    .end local v0           #image:Landroid/graphics/drawable/Drawable;
    :cond_0
    sget v1, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    return v1
.end method

.method public static getFrontCameraPosition()Lcom/android/camera/DisplayDevice$FrontCameraPosition;
    .locals 2

    .prologue
    .line 1766
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    .line 1769
    :cond_0
    sget-object v0, Lcom/android/camera/DisplayDevice$FrontCameraPosition;->Left:Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    .line 1771
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/camera/DisplayDevice$FrontCameraPosition;->Right:Lcom/android/camera/DisplayDevice$FrontCameraPosition;

    goto :goto_0
.end method

.method public static hasAutoFocus()Z
    .locals 2

    .prologue
    .line 715
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 719
    :cond_0
    const/4 v0, 0x0

    .line 721
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasLimit250KB()Z
    .locals 2

    .prologue
    .line 867
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x71

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 869
    const/4 v0, 0x1

    .line 871
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCP2Series()Z
    .locals 2

    .prologue
    .line 1780
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefaultQuality720p()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1116
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return v0

    .line 1119
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x28

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x21

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x26

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x147

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x25

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x24

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x14a

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x49

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x146

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x149

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x43

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDelayCreateImageThumb()Z
    .locals 2

    .prologue
    .line 1195
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 1196
    const/4 v0, 0x1

    .line 1198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDelayRecording()Z
    .locals 2

    .prologue
    .line 1207
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_1

    .line 1211
    :cond_0
    const/4 v0, 0x1

    .line 1213
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisplayGPSindicator()Z
    .locals 1

    .prologue
    .line 1202
    const/4 v0, 0x1

    return v0
.end method

.method public static isDlxSeries()Z
    .locals 2

    .prologue
    .line 1788
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x131

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDoubleShot()Z
    .locals 2

    .prologue
    .line 644
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 645
    const/4 v0, 0x1

    .line 647
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFrontCameraOnly()Z
    .locals 2

    .prologue
    .line 1636
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_1

    .line 1638
    :cond_0
    const/4 v0, 0x1

    .line 1639
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGifModeBySetOneShotPreviewCallback()Z
    .locals 2

    .prologue
    .line 1746
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHalfPCB()Z
    .locals 1

    .prologue
    .line 1156
    const/4 v0, 0x1

    return v0
.end method

.method public static isK2Series()Z
    .locals 2

    .prologue
    .line 1799
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x56

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowEndDevice()Z
    .locals 2

    .prologue
    .line 1705
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isK2Series()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe4

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe5

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isCP2Series()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isMagniSeries()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMagniSeries()Z
    .locals 2

    .prologue
    .line 1821
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNvidiaPlatform()Z
    .locals 2

    .prologue
    .line 1721
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x147

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x146

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x149

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProtoSeries()Z
    .locals 2

    .prologue
    .line 1814
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x23f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x240

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQCT8x30()Z
    .locals 2

    .prologue
    .line 940
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isK2Series()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2aa

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowFlashLightHint()Z
    .locals 2

    .prologue
    .line 1644
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-ne v0, v1, :cond_0

    .line 1645
    const/4 v0, 0x0

    .line 1647
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportMirrorMode()Z
    .locals 1

    .prologue
    .line 1761
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSinaShareKey()Z
    .locals 2

    .prologue
    .line 1737
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d7

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 1624
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVieSeries()Z
    .locals 2

    .prologue
    .line 1808
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVirtualHWKeyRotated()Z
    .locals 2

    .prologue
    .line 1358
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 1361
    :cond_0
    const/4 v0, 0x1

    .line 1363
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWideScreen()Z
    .locals 2

    .prologue
    .line 620
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_4_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_0

    .line 621
    const/4 v0, 0x0

    .line 623
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static ishtcChina()Z
    .locals 2

    .prologue
    .line 1616
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1617
    const/4 v0, 0x1

    .line 1619
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final needDelayZooming()Z
    .locals 2

    .prologue
    .line 1526
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x62

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needForce48KAudioSamplingRate()Z
    .locals 1

    .prologue
    .line 1731
    const/4 v0, 0x1

    return v0
.end method

.method public static notSupportH264()Z
    .locals 2

    .prologue
    .line 1106
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x27()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_0

    .line 1109
    const/4 v0, 0x1

    .line 1111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeMMS()Z
    .locals 2

    .prologue
    .line 860
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    .line 861
    const/4 v0, 0x1

    .line 863
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showEffectInMenu()Z
    .locals 2

    .prologue
    .line 824
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 826
    :cond_0
    const/4 v0, 0x1

    .line 828
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showFocusWithoutDelay()Z
    .locals 1

    .prologue
    .line 1175
    const/4 v0, 0x1

    return v0
.end method

.method public static showISOInMenu()Z
    .locals 2

    .prologue
    .line 815
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 816
    const/4 v0, 0x1

    .line 818
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showSceneInMenu()Z
    .locals 2

    .prologue
    .line 834
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 842
    :cond_0
    const/4 v0, 0x0

    .line 844
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static support10800p2ndCam()Z
    .locals 2

    .prologue
    .line 1349
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    .line 1351
    :cond_0
    const/4 v0, 0x1

    .line 1353
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support1080p()Z
    .locals 2

    .prologue
    .line 1032
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isK2Series()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVieSeries()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2aa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d7

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x147

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x14a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x146

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x149

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    :cond_0
    const/4 v0, 0x1

    .line 1064
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support128kBitrate()Z
    .locals 1

    .prologue
    .line 1237
    const/4 v0, 0x1

    return v0
.end method

.method public static support1M2ndCam()Z
    .locals 2

    .prologue
    .line 1275
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdd

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2aa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d7

    if-ne v0, v1, :cond_1

    .line 1284
    :cond_0
    const/4 v0, 0x0

    .line 1286
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static support1_6M2ndCam()Z
    .locals 2

    .prologue
    .line 1291
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isK2Series()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x149

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x146

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x147

    if-ne v0, v1, :cond_1

    .line 1295
    :cond_0
    const/4 v0, 0x1

    .line 1297
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support2M2ndCam()Z
    .locals 2

    .prologue
    .line 1301
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1305
    :cond_0
    const/4 v0, 0x1

    .line 1307
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support2ndCamAutoEnhance()Z
    .locals 2

    .prologue
    .line 1591
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-ne v0, v1, :cond_0

    .line 1593
    const/4 v0, 0x1

    .line 1595
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support2ndCamFacedetect()Z
    .locals 1

    .prologue
    .line 652
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    const/4 v0, 0x1

    .line 655
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support2ndCamNoneMirror()Z
    .locals 1

    .prologue
    .line 1457
    const/4 v0, 0x1

    return v0
.end method

.method public static support3DCamera()Z
    .locals 2

    .prologue
    .line 1368
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xac

    if-ne v0, v1, :cond_1

    .line 1374
    :cond_0
    const/4 v0, 0x1

    .line 1376
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support3DHWSwitch()Z
    .locals 2

    .prologue
    .line 1380
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-ne v0, v1, :cond_1

    .line 1383
    :cond_0
    const/4 v0, 0x1

    .line 1385
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support720p()Z
    .locals 2

    .prologue
    .line 1070
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe4

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isMagniSeries()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    :cond_0
    const/4 v0, 0x0

    .line 1080
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static support720p2ndCam()Z
    .locals 2

    .prologue
    .line 1324
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isK2Series()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x14a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x147

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x146

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x149

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1343
    :cond_0
    const/4 v0, 0x1

    .line 1345
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportAutoUpload()Z
    .locals 1

    .prologue
    .line 1463
    invoke-static {}, Lcom/android/camera/DisplayDevice;->ishtcChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    const/4 v0, 0x0

    .line 1466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportAutoUploadDialog()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1476
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    :cond_0
    return v1
.end method

.method public static supportBlinkDetect()Z
    .locals 1

    .prologue
    .line 668
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const/4 v0, 0x1

    .line 671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportCAF()Z
    .locals 2

    .prologue
    .line 1666
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isMagniSeries()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe4

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe5

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 1676
    :cond_0
    const/4 v0, 0x0

    .line 1678
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportCamcorderHWButton()Z
    .locals 2

    .prologue
    .line 1607
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-ne v0, v1, :cond_0

    .line 1609
    const/4 v0, 0x1

    .line 1611
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportCamcorderHWSwitch()Z
    .locals 2

    .prologue
    .line 1389
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-ne v0, v1, :cond_0

    .line 1390
    const/4 v0, 0x1

    .line 1392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportCamcorderRotate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1187
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportFaceDetection()Z
    .locals 1

    .prologue
    .line 1151
    const/4 v0, 0x1

    return v0
.end method

.method public static supportFastFrameRecording()Z
    .locals 2

    .prologue
    .line 1555
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isK2Series()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVieSeries()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2aa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x147

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x14a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x146

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x149

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isCP2Series()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1585
    :cond_0
    const/4 v0, 0x1

    .line 1587
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportGpuEffect()Z
    .locals 2

    .prologue
    .line 693
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe4

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 703
    :cond_0
    const/4 v0, 0x0

    .line 705
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportH264()Z
    .locals 1

    .prologue
    .line 1099
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isCP2Series()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    :cond_0
    const/4 v0, 0x1

    .line 1102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportHTCMediaUploader()Z
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x1

    return v0
.end method

.method public static supportHVGA480Recording()Z
    .locals 2

    .prologue
    .line 1505
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 1508
    :cond_0
    const/4 v0, 0x1

    .line 1510
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportHVGARecording()Z
    .locals 2

    .prologue
    .line 1494
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 1498
    :cond_0
    const/4 v0, 0x0

    .line 1500
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportHWShareButton()Z
    .locals 2

    .prologue
    .line 1485
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 1487
    :cond_0
    const/4 v0, 0x1

    .line 1489
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportISO()Z
    .locals 2

    .prologue
    .line 806
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    .line 808
    :cond_0
    const/4 v0, 0x0

    .line 810
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportISO1250()Z
    .locals 2

    .prologue
    .line 1141
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-ne v0, v1, :cond_1

    .line 1145
    :cond_0
    const/4 v0, 0x1

    .line 1147
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportIconRotate()Z
    .locals 2

    .prologue
    .line 1180
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 1181
    const/4 v0, 0x0

    .line 1183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportMMSVedioRecording()Z
    .locals 1

    .prologue
    .line 1233
    const/4 v0, 0x1

    return v0
.end method

.method public static supportOVSensorResolution()Z
    .locals 1

    .prologue
    .line 1423
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isCP2Series()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    const/4 v0, 0x1

    .line 1426
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportOnlineVedioRecording()Z
    .locals 2

    .prologue
    .line 1217
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdd

    if-ne v0, v1, :cond_1

    .line 1221
    :cond_0
    const/4 v0, 0x1

    .line 1224
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportOnlyMP4VideoFormat()Z
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x1

    return v0
.end method

.method public static supportQCT7201()Z
    .locals 2

    .prologue
    .line 919
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 922
    :cond_0
    const/4 v0, 0x1

    .line 924
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportQCT7225()Z
    .locals 2

    .prologue
    .line 928
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 932
    :cond_0
    const/4 v0, 0x1

    .line 934
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportQCT7x27()Z
    .locals 2

    .prologue
    .line 987
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_1

    .line 992
    :cond_0
    const/4 v0, 0x1

    .line 994
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportQCT7x30()Z
    .locals 2

    .prologue
    .line 957
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x93

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe5

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isMagniSeries()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    :cond_0
    const/4 v0, 0x1

    .line 982
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportQCT8x50()Z
    .locals 2

    .prologue
    .line 947
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-ne v0, v1, :cond_1

    .line 951
    :cond_0
    const/4 v0, 0x1

    .line 953
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportQCT8x60()Z
    .locals 2

    .prologue
    .line 999
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d7

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x147

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x14a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x146

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x149

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    :cond_0
    const/4 v0, 0x1

    .line 1028
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportQHD2ndCam()Z
    .locals 2

    .prologue
    .line 1311
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d7

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2aa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d8

    if-ne v0, v1, :cond_1

    .line 1318
    :cond_0
    const/4 v0, 0x0

    .line 1320
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportRAWChip()Z
    .locals 2

    .prologue
    .line 1688
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isMagniSeries()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe4

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe5

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 1698
    :cond_0
    const/4 v0, 0x0

    .line 1700
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportSaveMirrorImage()Z
    .locals 1

    .prologue
    .line 1828
    const/4 v0, 0x1

    return v0
.end method

.method public static supportScalado()Z
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x1

    return v0
.end method

.method public static final supportScene()Z
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x1

    return v0
.end method

.method public static supportSecondCamera()Z
    .locals 2

    .prologue
    .line 739
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isCP2Series()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isMagniSeries()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    :cond_0
    const/4 v0, 0x0

    .line 750
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportSensor()Z
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x1

    return v0
.end method

.method public static supportSensorFocus()Z
    .locals 2

    .prologue
    .line 675
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_1

    .line 677
    :cond_0
    const/4 v0, 0x0

    .line 679
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportSharpSensor()Z
    .locals 2

    .prologue
    .line 1397
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xac

    if-ne v0, v1, :cond_1

    .line 1403
    :cond_0
    const/4 v0, 0x1

    .line 1405
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportSharpSensorResolution()Z
    .locals 2

    .prologue
    .line 1410
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xac

    if-ne v0, v1, :cond_1

    .line 1416
    :cond_0
    const/4 v0, 0x1

    .line 1418
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportSmileCapture()Z
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x1

    return v0
.end method

.method public static supportSpecific2ndCamera()Z
    .locals 2

    .prologue
    .line 755
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 765
    :cond_0
    const/4 v0, 0x1

    .line 767
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportStereoRecord()Z
    .locals 2

    .prologue
    .line 1440
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe4

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe5

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isProtoSeries()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isCP2Series()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isMagniSeries()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1451
    :cond_0
    const/4 v0, 0x0

    .line 1453
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportSwitchButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 788
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return v0

    .line 791
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 792
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportTapScreenCapture()Z
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public static supportTrackBallFocus()Z
    .locals 2

    .prologue
    .line 798
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1

    .line 800
    :cond_0
    const/4 v0, 0x1

    .line 802
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportVGA2ndCam()Z
    .locals 2

    .prologue
    .line 1265
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdd

    if-ne v0, v1, :cond_1

    .line 1268
    :cond_0
    const/4 v0, 0x0

    .line 1270
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportVideoFormatChoosing()Z
    .locals 1

    .prologue
    .line 1551
    const/4 v0, 0x0

    return v0
.end method

.method public static supportVideoSnapshot()Z
    .locals 2

    .prologue
    .line 1652
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe4

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe5

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 1659
    :cond_0
    const/4 v0, 0x0

    .line 1661
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportWVGA()Z
    .locals 2

    .prologue
    .line 1084
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe3

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe4

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x60()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isCP2Series()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isK2Series()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1093
    :cond_0
    const/4 v0, 0x1

    .line 1095
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportWideScreen2ndCamera()Z
    .locals 2

    .prologue
    .line 771
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2aa

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVieSeries()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    :cond_0
    const/4 v0, 0x0

    .line 784
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
