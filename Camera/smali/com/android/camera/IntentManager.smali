.class public Lcom/android/camera/IntentManager;
.super Ljava/lang/Object;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/IntentManager$RequestName;,
        Lcom/android/camera/IntentManager$RequestMode;
    }
.end annotation


# static fields
.field public static final ACTION_CAMCORDER:Ljava/lang/String; = "from_camcorder"

.field public static final ACTION_CAMERA:Ljava/lang/String; = "from_camera"

.field private static final ALBUM_REQUEST:Ljava/lang/String; = "album"

.field private static final CONTACTS_REQUEST:Ljava/lang/String; = "contacts"

.field private static final EXTRAS_SQUARE_LENGTH:Ljava/lang/String; = "output-length"

.field private static final KEY_DISABLE_TIMEOUT:Ljava/lang/String; = "htc_disable_timeout"

.field private static final KEY_LOCKSCREEN_START_ACTIVITY_TYPE:Ljava/lang/String; = "lockscreen_start_activity"

.field private static final MAIL_REQUEST:Ljava/lang/String; = "mail"

.field public static final MMS_IS_WIDESCREEN_DEFAULT:Z = false

.field private static final MMS_KEY_MAXIMUM_SIZE:Ljava/lang/String; = "maxfilesize"

.field private static final MMS_REQUEST:Ljava/lang/String; = "mms"

.field private static final NOTES_REQUEST:Ljava/lang/String; = "notes"

.field private static final REQUESTED:Ljava/lang/String; = "RequestedFrom"

.field public static final SCREEN_DELAY:I = 0x1d4c0

.field public static final SETTING_KEY_REQUEST_MODE:Ljava/lang/String; = "request_mode"

.field public static final SETTING_KEY_REQUEST_NAME:Ljava/lang/String; = "request_name"

.field private static final SQUARE_REQUEST:Ljava/lang/String; = "captureSquare"

.field public static final START_ACTIVITY_HOTKEY:I = 0x2

.field public static final START_ACTIVITY_SHORTCUT:I = 0x1

.field public static final START_ACTIVITY_UNKNOWN:I = 0x0

.field public static final START_CAMCORDER:Ljava/lang/String; = "com.android.camera.CamcorderEntry"

.field public static final START_CAMERA:Ljava/lang/String; = "com.android.camera.CameraEntry"

.field private static final TAG:Ljava/lang/String; = "IntentManager"

.field private static mCropValue:Ljava/lang/String;

.field private static mHasExtraVideoQuality:Z

.field private static mIsHighVideoQuality:Z

.field private static mMMS_isVideoQVGA:Z

.field private static mMMS_isWideScreen:Z

.field private static mMMS_maximum_size:I

.field private static mSaveUri:Landroid/net/Uri;

.field private static mVideo_maximum_size:J


# instance fields
.field private mCameralaunchedBy:I

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mIsCamcorder:Z

.field public mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

.field public mRequestName:Lcom/android/camera/IntentManager$RequestName;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 44
    sput-boolean v2, Lcom/android/camera/IntentManager;->mIsHighVideoQuality:Z

    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/IntentManager;->mMMS_maximum_size:I

    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/camera/IntentManager;->mVideo_maximum_size:J

    .line 61
    sput-boolean v2, Lcom/android/camera/IntentManager;->mMMS_isWideScreen:Z

    .line 63
    sput-boolean v2, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    .line 66
    sput-object v3, Lcom/android/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    .line 68
    sput-object v3, Lcom/android/camera/IntentManager;->mCropValue:Ljava/lang/String;

    .line 70
    sput-boolean v2, Lcom/android/camera/IntentManager;->mHasExtraVideoQuality:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V
    .locals 1
    .parameter "htccamera"
    .parameter "camerathread"

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/android/camera/IntentManager;->mCameralaunchedBy:I

    .line 73
    iput-boolean v0, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 90
    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v0, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 92
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 97
    iput-object p1, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 98
    return-void
.end method

.method public static IsHighVideoQuality()Z
    .locals 1

    .prologue
    .line 299
    sget-boolean v0, Lcom/android/camera/IntentManager;->mIsHighVideoQuality:Z

    return v0
.end method

.method private checkExtras(Landroid/os/Bundle;)V
    .locals 11
    .parameter "extras"

    .prologue
    const/4 v4, 0x0

    const v10, 0x1d4c0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 107
    if-nez p1, :cond_0

    .line 108
    sput-object v4, Lcom/android/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    .line 109
    sput-object v4, Lcom/android/camera/IntentManager;->mCropValue:Ljava/lang/String;

    .line 110
    iget-object v4, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput v10, v4, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    .line 111
    const-string v4, "IntentManager"

    const-string v5, "extras == null"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v4, "output"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    sput-object v4, Lcom/android/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    .line 116
    const-string v4, "crop"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/camera/IntentManager;->mCropValue:Ljava/lang/String;

    .line 118
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v7, v4

    sput-wide v7, Lcom/android/camera/IntentManager;->mVideo_maximum_size:J

    .line 119
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, extraVideoQuality:I
    if-lez v1, :cond_2

    move v4, v5

    :goto_1
    sput-boolean v4, Lcom/android/camera/IntentManager;->mIsHighVideoQuality:Z

    .line 122
    iget-object v4, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v7, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v7}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    const-string v4, "output-length"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    const-string v4, "output-length"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 127
    .local v3, len:I
    const-string v4, "IntentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Has extras \'output-length\' = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-lez v3, :cond_3

    .line 130
    sput v3, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    .line 138
    .end local v3           #len:I
    :cond_1
    :goto_2
    const-string v4, "htc_disable_timeout"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 139
    .local v0, disable:Z
    if-ne v0, v5, :cond_4

    .line 140
    iget-object v4, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v7, 0x7fffffff

    iput v7, v4, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    .line 141
    const-string v4, "IntentManager"

    const-string v7, "disable screen timeout !!!"

    invoke-static {v4, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_3
    const-string v4, "lockscreen_start_activity"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 147
    .local v2, iLaunchedBy:I
    if-ne v5, v2, :cond_5

    .line 148
    iput v5, p0, Lcom/android/camera/IntentManager;->mCameralaunchedBy:I

    .line 149
    const-string v4, "IntentManager"

    const-string v5, "extras: camera lauched by START_ACTIVITY_SHORTCUT"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #disable:Z
    .end local v2           #iLaunchedBy:I
    :cond_2
    move v4, v6

    .line 120
    goto :goto_1

    .line 132
    .restart local v3       #len:I
    :cond_3
    sget v4, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    sput v4, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    goto :goto_2

    .line 143
    .end local v3           #len:I
    .restart local v0       #disable:Z
    :cond_4
    iget-object v4, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput v10, v4, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    goto :goto_3

    .line 150
    .restart local v2       #iLaunchedBy:I
    :cond_5
    if-ne v9, v2, :cond_6

    .line 151
    iput v9, p0, Lcom/android/camera/IntentManager;->mCameralaunchedBy:I

    .line 152
    const-string v4, "IntentManager"

    const-string v5, "extras: camera lauched by START_ACTIVITY_HOTKEY"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_6
    iput v6, p0, Lcom/android/camera/IntentManager;->mCameralaunchedBy:I

    .line 155
    const-string v4, "IntentManager"

    const-string v5, "extras: camera lauched by other type!!"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getCropValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/android/camera/IntentManager;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method public static getMMS_MaximumSize()I
    .locals 1

    .prologue
    .line 275
    sget v0, Lcom/android/camera/IntentManager;->mMMS_maximum_size:I

    return v0
.end method

.method public static getMMS_isVideoQVGA()Z
    .locals 1

    .prologue
    .line 291
    sget-boolean v0, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    return v0
.end method

.method public static getMMS_isWideScreen()Z
    .locals 1

    .prologue
    .line 283
    sget-boolean v0, Lcom/android/camera/IntentManager;->mMMS_isWideScreen:Z

    return v0
.end method

.method public static getSaveUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/android/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getVideoMaximum_Size()J
    .locals 2

    .prologue
    .line 295
    sget-wide v0, Lcom/android/camera/IntentManager;->mVideo_maximum_size:J

    return-wide v0
.end method

.method public static hasVideoQuality()Z
    .locals 1

    .prologue
    .line 312
    sget-boolean v0, Lcom/android/camera/IntentManager;->mHasExtraVideoQuality:Z

    return v0
.end method

.method public static setMMS_isVideoQVGA(Z)V
    .locals 0
    .parameter "isQVGA"

    .prologue
    .line 287
    sput-boolean p0, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    .line 288
    return-void
.end method

.method public static setMMS_isWideScreen(Z)V
    .locals 0
    .parameter "isWide"

    .prologue
    .line 279
    sput-boolean p0, Lcom/android/camera/IntentManager;->mMMS_isWideScreen:Z

    .line 280
    return-void
.end method


# virtual methods
.method public checkIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 165
    const-string v3, "IntentManager"

    const-string v4, "intent = null!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""

    .line 172
    :cond_1
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Camera:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 174
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_1
    const-string v3, "RequestedFrom"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, request:Ljava/lang/String;
    if-nez v2, :cond_c

    .line 215
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v3, v4, :cond_a

    .line 216
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 217
    const-string v3, "IntentManager"

    const-string v4, "request name = null - RequestName.Unknown_General"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v2           #request:Ljava/lang/String;
    :cond_2
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Video:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 177
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Video"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_3
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 180
    iput-boolean v6, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 181
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from action STILL_IMAGE_CAMERA"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_4
    const-string v3, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 184
    iput-boolean v7, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 185
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from action VIDEO_CAMERA"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_5
    const-string v3, "from_camera"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 187
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 188
    iput-boolean v6, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 189
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from Camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :cond_6
    const-string v3, "from_camcorder"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 191
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 192
    iput-boolean v7, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 193
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from Camcorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 195
    :cond_7
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 196
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, componentName:Ljava/lang/String;
    const-string v3, "IntentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v3, "com.android.camera.CameraEntry"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 200
    iput-boolean v6, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 201
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from Camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 202
    :cond_8
    const-string v3, "com.android.camera.CamcorderEntry"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 203
    iput-boolean v7, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 204
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from Camcorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 206
    :cond_9
    iput-boolean v6, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 207
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from unknown"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    .end local v1           #componentName:Ljava/lang/String;
    .restart local v2       #request:Ljava/lang/String;
    :cond_a
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 221
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 222
    sput-boolean v7, Lcom/android/camera/IntentManager;->mHasExtraVideoQuality:Z

    .line 225
    :goto_2
    const-string v3, "IntentManager"

    const-string v4, "request name = null - RequestName.Unknown_Service"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_b
    sput-boolean v6, Lcom/android/camera/IntentManager;->mHasExtraVideoQuality:Z

    goto :goto_2

    .line 227
    :cond_c
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 228
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v3, v4, :cond_d

    .line 229
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 230
    const-string v3, "IntentManager"

    const-string v4, "no request name - RequestName.Unknown_General"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_d
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 233
    const-string v3, "IntentManager"

    const-string v4, "no request name - RequestName.Unknown_Service"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :cond_e
    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 236
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 237
    const-string v3, "maxfilesize"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/camera/IntentManager;->mMMS_maximum_size:I

    .line 238
    const-string v3, "IntentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRequestName = RequestName.Mms, maximum file size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/camera/IntentManager;->mMMS_maximum_size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sput-boolean v6, Lcom/android/camera/IntentManager;->mMMS_isWideScreen:Z

    .line 240
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Mms, default image ratio is 4:3, 640*480"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v3, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v4, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v3, v4, :cond_f

    .line 242
    sput-boolean v7, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    .line 243
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Mms, video is QVGA for custom request"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :cond_f
    sput-boolean v6, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    goto/16 :goto_0

    .line 247
    :cond_10
    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 248
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 249
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Album"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :cond_11
    const-string v3, "contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 251
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 252
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Contacts"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :cond_12
    const-string v3, "mail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 254
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Mail:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 255
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Mail"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :cond_13
    const-string v3, "captureSquare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 257
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 258
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Square"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_14
    const-string v3, "notes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 260
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 261
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Notes"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_15
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v3, v4, :cond_16

    .line 264
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 265
    const-string v3, "IntentManager"

    const-string v4, "other request name - RequestName.Unknown_General"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_16
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 268
    const-string v3, "IntentManager"

    const-string v4, "other request name - RequestName.Unknown_Service"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getLaunchedby()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/android/camera/IntentManager;->mCameralaunchedBy:I

    return v0
.end method

.method public initManager(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/camera/IntentManager;->checkIntent(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/IntentManager;->checkExtras(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public isFromCamcorder()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    return v0
.end method

.method public releaseIntentManager()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 161
    return-void
.end method

.method public resetLaunchedby()V
    .locals 2

    .prologue
    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/IntentManager;->mCameralaunchedBy:I

    .line 319
    const-string v0, "IntentManager"

    const-string v1, "extras: resetLaunchedby camera START_ACTIVITY_UNKNOWN"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method
