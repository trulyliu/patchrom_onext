.class public Lcom/htc/music/util/ProfilerPerformanceUtils;
.super Ljava/lang/Object;
.source "ProfilerPerformanceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;,
        Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;
    }
.end annotation


# static fields
.field public static final PROFILERTYPE_ALBUM:Ljava/lang/String; = "Albums"

.field public static final PROFILERTYPE_ARTIST:Ljava/lang/String; = "Artists"

.field public static final PROFILERTYPE_FOLDER:Ljava/lang/String; = "Folders"

.field public static final PROFILERTYPE_MINIPLAYER:Ljava/lang/String; = "Mini Player"

.field public static final PROFILERTYPE_NOWPLAYING:Ljava/lang/String; = "NOW_PLAYING"

.field public static final PROFILERTYPE_PLAYLIST:Ljava/lang/String; = "Playlists"

.field public static final PROFILERTYPE_TRACK:Ljava/lang/String; = "Songs"

.field private static mProfilerProertyStatus:Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;->NOT_CHECK:Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;

    sput-object v0, Lcom/htc/music/util/ProfilerPerformanceUtils;->mProfilerProertyStatus:Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static needProfilerPerformance()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 37
    sget-object v2, Lcom/htc/music/util/ProfilerPerformanceUtils;->mProfilerProertyStatus:Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;

    sget-object v3, Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;->DO_PROFILER:Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;

    if-ne v2, v3, :cond_0

    .line 49
    :goto_0
    return v0

    .line 40
    :cond_0
    sget-object v2, Lcom/htc/music/util/ProfilerPerformanceUtils;->mProfilerProertyStatus:Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;

    sget-object v3, Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;->NOT_CHECK:Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;

    if-ne v2, v3, :cond_3

    .line 41
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v2, :cond_1

    const-string v2, "profiler.performance"

    invoke-static {v2, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 42
    :cond_1
    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;->DO_PROFILER:Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;

    sput-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils;->mProfilerProertyStatus:Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;

    goto :goto_0

    .line 46
    :cond_2
    sget-object v0, Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;->IGNORE_PROFILER:Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;

    sput-object v0, Lcom/htc/music/util/ProfilerPerformanceUtils;->mProfilerProertyStatus:Lcom/htc/music/util/ProfilerPerformanceUtils$ProfilerProperty;

    :cond_3
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method private static printCarFlickLog(ZLjava/lang/String;)V
    .locals 3
    .parameter "start"
    .parameter "from"

    .prologue
    .line 103
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    if-eqz p0, :cond_1

    .line 105
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](2101) [FPS][MUSIC][FLICK_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_CAR][START]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](2102) [FPS][MUSIC][FLICK_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_CAR][FINISH]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static printCarNowPlayingLaunchingLog(ZLjava/lang/String;)V
    .locals 3
    .parameter "start"
    .parameter "from"

    .prologue
    .line 93
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    if-eqz p0, :cond_1

    .line 95
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](303) [LAUNCH_TIME][MUSIC][LAUNCH_NOW_PLAYING_CAR][START] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](304) [LAUNCH_TIME][MUSIC][LAUNCH_NOW_PLAYING_CAR][DATA_READY]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static printFlickLog(ZLjava/lang/String;)V
    .locals 3
    .parameter "start"
    .parameter "from"

    .prologue
    .line 63
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](2101) [FPS][MUSIC][FLICK_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][START]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](2102) [FPS][MUSIC][FLICK_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][FINISH]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static printNowPlayingLaunchingLog(ZLjava/lang/String;)V
    .locals 3
    .parameter "start"
    .parameter "from"

    .prologue
    .line 53
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    if-eqz p0, :cond_1

    .line 55
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](303) [LAUNCH_TIME][MUSIC][LAUNCH_NOW_PLAYING][START] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](304) [LAUNCH_TIME][MUSIC][LAUNCH_NOW_PLAYING][DATA_READY]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static printPanLog(ZLjava/lang/String;)V
    .locals 3
    .parameter "start"
    .parameter "from"

    .prologue
    .line 73
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    if-eqz p0, :cond_1

    .line 75
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](2101) [FPS][MUSIC][PAN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][START]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](2102) [FPS][MUSIC][PAN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][FINISH]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static printScrollLog(ZLjava/lang/String;)V
    .locals 3
    .parameter "start"
    .parameter "from"

    .prologue
    .line 83
    invoke-static {}, Lcom/htc/music/util/ProfilerPerformanceUtils;->needProfilerPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    if-eqz p0, :cond_1

    .line 85
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](2101) [FPS][MUSIC][SCROLL_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][START]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](2102) [FPS][MUSIC][SCROLL_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][FINISH]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static profilerCarLibsScrolling(IILcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;)I
    .locals 4
    .parameter "scrollState"
    .parameter "prevScrollState"
    .parameter "mediaType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, from:Ljava/lang/String;
    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->ARTIST_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    if-ne p2, v1, :cond_2

    .line 158
    const-string v0, "Artists"

    .line 170
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 171
    packed-switch p0, :pswitch_data_0

    .line 186
    :cond_1
    :goto_1
    return p0

    .line 160
    :cond_2
    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->ALBUM_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    if-ne p2, v1, :cond_3

    .line 161
    const-string v0, "Albums"

    goto :goto_0

    .line 163
    :cond_3
    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->PLAYLIST_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    if-ne p2, v1, :cond_4

    .line 164
    const-string v0, "Playlists"

    goto :goto_0

    .line 166
    :cond_4
    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->TRACK_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    if-ne p2, v1, :cond_0

    .line 167
    const-string v0, "Songs"

    goto :goto_0

    .line 173
    :pswitch_0
    if-ne p1, v3, :cond_1

    .line 174
    invoke-static {v2, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printCarFlickLog(ZLjava/lang/String;)V

    goto :goto_1

    .line 177
    :pswitch_1
    if-ne p1, v3, :cond_1

    .line 178
    invoke-static {v2, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printCarFlickLog(ZLjava/lang/String;)V

    goto :goto_1

    .line 181
    :pswitch_2
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printCarFlickLog(ZLjava/lang/String;)V

    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static profilerLibsScrolling(IILcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;)I
    .locals 5
    .parameter "scrollState"
    .parameter "prevScrollState"
    .parameter "mediaType"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, from:Ljava/lang/String;
    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->ARTIST_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    if-ne p2, v1, :cond_2

    .line 116
    const-string v0, "Artists"

    .line 128
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 129
    packed-switch p0, :pswitch_data_0

    .line 151
    :cond_1
    :goto_1
    return p0

    .line 118
    :cond_2
    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->ALBUM_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    if-ne p2, v1, :cond_3

    .line 119
    const-string v0, "Albums"

    goto :goto_0

    .line 121
    :cond_3
    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->FOLDER_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    if-ne p2, v1, :cond_4

    .line 122
    const-string v0, "Folders"

    goto :goto_0

    .line 124
    :cond_4
    sget-object v1, Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;->TRACK_TYPE:Lcom/htc/music/util/ProfilerPerformanceUtils$SourceMediaType;

    if-ne p2, v1, :cond_0

    .line 125
    const-string v0, "Songs"

    goto :goto_0

    .line 131
    :pswitch_0
    if-ne p1, v4, :cond_5

    .line 132
    invoke-static {v2, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printFlickLog(ZLjava/lang/String;)V

    .line 133
    :cond_5
    if-ne p1, v3, :cond_1

    .line 134
    invoke-static {v2, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printPanLog(ZLjava/lang/String;)V

    goto :goto_1

    .line 137
    :pswitch_1
    if-ne p1, v4, :cond_6

    .line 138
    invoke-static {v2, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printFlickLog(ZLjava/lang/String;)V

    .line 140
    :cond_6
    invoke-static {v3, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printPanLog(ZLjava/lang/String;)V

    goto :goto_1

    .line 143
    :pswitch_2
    if-ne p1, v3, :cond_7

    .line 144
    invoke-static {v2, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printPanLog(ZLjava/lang/String;)V

    .line 146
    :cond_7
    invoke-static {v3, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printFlickLog(ZLjava/lang/String;)V

    goto :goto_1

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static profilerNowPlayingScrolling(II)I
    .locals 5
    .parameter "scrollState"
    .parameter "prevScrollState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x9

    const/4 v1, 0x5

    const/4 v0, 0x2

    .line 192
    if-ne p0, v0, :cond_3

    .line 193
    if-eq p1, v0, :cond_0

    .line 194
    const-string v0, "NOW_PLAYING"

    invoke-static {v4, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printPanLog(ZLjava/lang/String;)V

    .line 201
    :cond_0
    :goto_0
    if-eq p0, v1, :cond_1

    if-ne p0, v2, :cond_4

    .line 202
    :cond_1
    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_2

    .line 203
    const-string v0, "NOW_PLAYING"

    invoke-static {v4, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printScrollLog(ZLjava/lang/String;)V

    .line 209
    :cond_2
    :goto_1
    return p0

    .line 196
    :cond_3
    if-ne p1, v0, :cond_0

    .line 197
    const-string v0, "NOW_PLAYING"

    invoke-static {v3, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printPanLog(ZLjava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_4
    if-eq p1, v1, :cond_5

    if-ne p1, v2, :cond_2

    .line 206
    :cond_5
    const-string v0, "NOW_PLAYING"

    invoke-static {v3, v0}, Lcom/htc/music/util/ProfilerPerformanceUtils;->printScrollLog(ZLjava/lang/String;)V

    goto :goto_1
.end method
