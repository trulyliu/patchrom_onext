.class public Lcom/htc/musicenhancer/DownloadStore;
.super Ljava/lang/Object;
.source "DownloadStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/musicenhancer/DownloadStore$MediaArt;,
        Lcom/htc/musicenhancer/DownloadStore$MediaArtColumns;,
        Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;,
        Lcom/htc/musicenhancer/DownloadStore$AlbumArt;,
        Lcom/htc/musicenhancer/DownloadStore$SettingColumns;,
        Lcom/htc/musicenhancer/DownloadStore$AlbumArtColumns;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVITY_ONSTART:Ljava/lang/String; = "action_activity_on_start"

.field public static final ACTION_AUTO_UPDATE_ALBUM:Ljava/lang/String; = "action_auto_update_album"

.field public static final ACTION_CANCEL_DOWNLOAD:Ljava/lang/String; = "action_cancel_download"

.field public static final ACTION_COMPLETE_ONE_DOWNLOAD:Ljava/lang/String; = "action_complete_one_download"

.field public static final ACTION_DOWNLOAD_FINISH:Ljava/lang/String; = "action_download_finish"

.field public static final ACTION_NOTIFICATION_DOWNLOADING:Ljava/lang/String; = "action_notification_downloading"

.field public static final ACTION_NOTIFICATION_DOWNLOAD_CANCEL:Ljava/lang/String; = "action_notification_download_cancel"

.field public static final ACTION_REVERT_CURRENT_ALBUM:Ljava/lang/String; = "action_revert_current_album"

.field public static final ACTION_SYNC_MDPROVIDER:Ljava/lang/String; = "action_sync_mdprovider"

.field public static final ACTION_UPDATE_ALL_ALBUM:Ljava/lang/String; = "action_update_all_album"

.field public static final ACTION_UPDATE_CURRENT_ALBUM:Ljava/lang/String; = "action_update_current_album"

.field public static final ACTION_UPDATE_CURRENT_LYRIC:Ljava/lang/String; = "action_update_current_lyric"

.field public static final ACTION_UPDATE_LYRICS_DATA_FEE_CHECK_DENIED:Ljava/lang/String; = "action_update_lyrics_data_fee_check_denied"

.field public static final ALBUM_ART_FOLDER:Ljava/lang/String; = "/Android/data/com.htc.musicenhancer/files/.albumarts"

.field public static final AUTHORITY:Ljava/lang/String; = "music"

.field public static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://music/"

.field public static final EXTERNAL_DB_FOLDER:Ljava/lang/String; = "/Android/data/com.htc.musicenhancer/files"

.field public static final IS_UPDATE_CURRENT:Ljava/lang/String; = "is_update_current"

.field public static final KEY_ALBUMART_PATH:Ljava/lang/String; = "albumart_path"

.field public static final KEY_ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final KEY_AUDIO_ID:Ljava/lang/String; = "audio_id"

.field public static final NEED_UPDATE_LYRIC:Ljava/lang/String; = "need_update_lyric"

.field public static final TABLE_ALBUM_NAME:Ljava/lang/String; = "albumart"

.field public static final TABLE_MEDIA_NAME:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method
