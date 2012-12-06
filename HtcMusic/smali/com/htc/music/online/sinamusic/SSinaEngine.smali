.class public Lcom/htc/music/online/sinamusic/SSinaEngine;
.super Ljava/lang/Object;
.source "SSinaEngine.java"

# interfaces
.implements Lcom/htc/music/online/sinamusic/ISinaEngine;


# static fields
.field private static TOTAL_FRIEND_SONGLIST:I

.field private static TOTAL_RECOMMEND_SONG:I

.field private static TOTAL_SELF_FAVOURITESONG:I

.field private static TOTAL_SELF_SONGLIST:I


# instance fields
.field private logger:Lcom/htc/music/online/sinamusic/MyLogger;

.field private mContext:Landroid/content/Context;

.field private mSinaAidl:Lcom/htc/music/online/sinamusic/SinaAidl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 42
    sput v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_FRIEND_SONGLIST:I

    .line 43
    sput v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_RECOMMEND_SONG:I

    .line 44
    sput v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_FAVOURITESONG:I

    .line 45
    sput v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_SONGLIST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "cxt"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mSinaAidl:Lcom/htc/music/online/sinamusic/SinaAidl;

    .line 40
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    .line 49
    iput-object p1, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/online/sinamusic/SSinaEngine;)Lcom/htc/music/online/sinamusic/MyLogger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    return-object v0
.end method


# virtual methods
.method public addToFavourite(I)Z
    .locals 27
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1028
    if-nez p1, :cond_0

    .line 1030
    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 1031
    .local v13, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13

    .line 1036
    .end local v13           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/online/sinamusic/SSinaEngine;->getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaAidl;->getLoginUser()Lcom/htc/opensense/social/PersonOp;

    move-result-object v14

    .line 1037
    .local v14, mPersonOp:Lcom/htc/opensense/social/PersonOp;
    invoke-virtual {v14}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v24

    const-string v25, "xtoken"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/opensense/social/data/Person;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1038
    .local v23, xtoken:Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "&"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1039
    .local v20, str1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "oauth_token:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1040
    const-string v24, "&"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 1041
    .local v21, str2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "oauth_token_secret:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1043
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1044
    .local v6, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    const-string v25, "http.connection.timeout"

    const/16 v26, 0x1770

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1045
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    const-string v25, "http.socket.timeout"

    const/16 v26, 0x1770

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1047
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1049
    .local v16, mStrb:Ljava/lang/StringBuilder;
    const-string v22, "http://music.weibo.com/yueku/cooperate/htc/song_collect.php"

    .line 1050
    .local v22, strUrl:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    const-string v24, "?"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oauth_token="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    const-string v24, "&"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oauth_token_secret="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    const-string v24, "&"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "songid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "HttpRequest:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1059
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v8, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v6, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 1061
    .local v9, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 1063
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1066
    .local v4, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1067
    .local v17, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .local v19, str:Ljava/lang/String;
    :goto_0
    if-eqz v19, :cond_1

    .line 1069
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 1072
    :cond_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v12, mJSONObject:Lorg/json/JSONObject;
    const-string v24, "retCode"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1074
    .local v18, retCode:I
    if-nez v18, :cond_2

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    const-string v25, "Server Return : Add successful"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1077
    const/16 v24, 0x1

    .line 1115
    .end local v4           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mJSONObject:Lorg/json/JSONObject;
    .end local v17           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v18           #retCode:I
    .end local v19           #str:Ljava/lang/String;
    :goto_1
    return v24

    .line 1081
    .restart local v4       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v12       #mJSONObject:Lorg/json/JSONObject;
    .restart local v17       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v18       #retCode:I
    .restart local v19       #str:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    const-string v25, "Server Return : Add failed"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1082
    const/16 v24, -0x5

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v7

    .line 1083
    .local v7, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v7
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1087
    .end local v4           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v6           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v7           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v8           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v9           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #mJSONObject:Lorg/json/JSONObject;
    .end local v14           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v16           #mStrb:Ljava/lang/StringBuilder;
    .end local v17           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v18           #retCode:I
    .end local v19           #str:Ljava/lang/String;
    .end local v20           #str1:Ljava/lang/String;
    .end local v21           #str2:Ljava/lang/String;
    .end local v22           #strUrl:Ljava/lang/String;
    .end local v23           #xtoken:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1090
    .local v3, e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 1091
    const/16 v24, -0x6

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 1092
    .local v15, mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15

    .line 1094
    .end local v3           #e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .end local v15           #mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_1
    move-exception v2

    .line 1097
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1098
    const/16 v24, -0x3

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v5

    .line 1099
    .local v5, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v5

    .line 1101
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v5           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_2
    move-exception v2

    .line 1104
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1105
    const/16 v24, -0x3

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v10

    .line 1106
    .local v10, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v10

    .line 1108
    .end local v2           #e:Ljava/io/IOException;
    .end local v10           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_3
    move-exception v2

    .line 1111
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1112
    const/16 v24, -0x4

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1113
    .local v11, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11

    .line 1115
    .end local v2           #e:Lorg/json/JSONException;
    .end local v11           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v6       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v9       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v16       #mStrb:Ljava/lang/StringBuilder;
    .restart local v20       #str1:Ljava/lang/String;
    .restart local v21       #str2:Ljava/lang/String;
    .restart local v22       #strUrl:Ljava/lang/String;
    .restart local v23       #xtoken:Ljava/lang/String;
    :cond_3
    const/16 v24, 0x0

    goto :goto_1
.end method

.method public doSinaPlaySongLog(Landroid/os/Bundle;)V
    .locals 24
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1595
    if-eqz p1, :cond_4

    .line 1597
    const-string v21, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1598
    .local v16, songId:I
    const-string v21, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1599
    .local v17, songName:Ljava/lang/String;
    const-string v21, "playlength"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1600
    .local v14, playlength:I
    const-string v21, "totallength"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1601
    .local v20, totallength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "id:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "songName:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "playlength:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "totallength:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1606
    if-eqz v16, :cond_3

    if-eqz v17, :cond_3

    if-eqz v14, :cond_3

    if-eqz v20, :cond_3

    .line 1610
    :try_start_0
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1611
    .local v6, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    const-string v22, "http.connection.timeout"

    const/16 v23, 0x1770

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1612
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    const-string v22, "http.socket.timeout"

    const/16 v23, 0x1770

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1614
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1615
    .local v11, mStrb:Ljava/lang/StringBuilder;
    const-string v19, "http://music.sina.com.cn/yueku/port/sap_playlog.php"

    .line 1616
    .local v19, strUrl:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    const-string v21, "?"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "id="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    const-string v21, "&"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "name="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    const-string v23, "%20"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    const-string v21, "&"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "playlength="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    const-string v21, "&"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "totallength="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    const-string v21, "&"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    const-string v21, "coFlag=300055"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    const-string v21, "ownerid"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1633
    const-string v21, "ownerid"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1634
    .local v13, ownerid:I
    const-string v21, "&"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ownerId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    .end local v13           #ownerid:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "HttpRequest:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1639
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1641
    .local v7, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 1642
    .local v8, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 1644
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1647
    .local v4, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1648
    .local v12, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .local v18, str:Ljava/lang/String;
    :goto_0
    if-eqz v18, :cond_1

    .line 1650
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 1652
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1653
    .local v15, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "The result is:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1682
    .end local v4           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v15           #result:Ljava/lang/String;
    .end local v18           #str:Ljava/lang/String;
    :cond_2
    return-void

    .line 1656
    .end local v6           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v7           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v11           #mStrb:Ljava/lang/StringBuilder;
    .end local v19           #strUrl:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1659
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1660
    const/16 v21, -0x3

    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v5

    .line 1661
    .local v5, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v5

    .line 1663
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v5           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_1
    move-exception v3

    .line 1666
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1667
    const/16 v21, -0x3

    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v9

    .line 1668
    .local v9, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v9

    .line 1673
    .end local v3           #e:Ljava/io/IOException;
    .end local v9           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_3
    const/16 v21, -0x1

    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v10

    .line 1674
    .local v10, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v10

    .line 1679
    .end local v10           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v14           #playlength:I
    .end local v16           #songId:I
    .end local v17           #songName:Ljava/lang/String;
    .end local v20           #totallength:I
    :cond_4
    const/16 v21, -0x1

    invoke-static/range {v21 .. v21}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v10

    .line 1680
    .restart local v10       #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v10
.end method

.method public getActualPlayUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "playUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v15, "[getActualPlayUrl] + Begin"

    invoke-virtual {v14, v15}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "playUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1227
    const/4 v12, 0x0

    .line 1228
    .local v12, strActualPlayUrl:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1232
    :try_start_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1233
    .local v4, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.connection.timeout"

    const/16 v16, 0x1770

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1234
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.socket.timeout"

    const/16 v16, 0x1770

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1235
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1237
    .local v5, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1238
    .local v6, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_1

    .line 1240
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1243
    .local v2, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1244
    .local v9, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, str:Ljava/lang/String;
    :goto_0
    if-eqz v11, :cond_0

    .line 1246
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 1248
    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1249
    .local v10, retPlayUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "return PlayUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1250
    const-string v13, "iask_music_song_url="

    .line 1251
    .local v13, strPrefix:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "strActualPlayUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1275
    .end local v2           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v9           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v10           #retPlayUrl:Ljava/lang/String;
    .end local v11           #str:Ljava/lang/String;
    .end local v13           #strPrefix:Ljava/lang/String;
    :cond_1
    return-object v12

    .line 1255
    .end local v4           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #mHttpResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 1258
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1259
    const/4 v14, -0x3

    invoke-static {v14}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v3

    .line 1260
    .local v3, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v3

    .line 1262
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v3           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_1
    move-exception v1

    .line 1265
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1266
    const/4 v14, -0x3

    invoke-static {v14}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v7

    .line 1267
    .local v7, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v7

    .line 1272
    .end local v1           #e:Ljava/io/IOException;
    .end local v7           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_2
    const/4 v14, -0x1

    invoke-static {v14}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v8

    .line 1273
    .local v8, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v8
.end method

.method public getFriendSonglist(II)Ljava/util/ArrayList;
    .locals 33
    .parameter "page"
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 209
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 211
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "parameter error: page<=0 or num<=0"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 212
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 213
    .local v17, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17

    .line 216
    .end local v17           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_1
    const/16 v30, 0x1

    move/from16 v0, p1

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "This is page 1"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 219
    const/16 v30, -0x1

    sput v30, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_FRIEND_SONGLIST:I

    .line 222
    :cond_2
    sget v30, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_FRIEND_SONGLIST:I

    if-ltz v30, :cond_4

    sget v30, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_FRIEND_SONGLIST:I

    add-int/lit8 v31, p1, -0x1

    mul-int v31, v31, p2

    sub-int v30, v30, v31

    if-gtz v30, :cond_4

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "no more data"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 226
    const/4 v7, 0x0

    .line 353
    :cond_3
    return-object v7

    .line 229
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v7, mArrayWrapperSonglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/online/sinamusic/SSinaEngine;->getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaAidl;->getLoginUser()Lcom/htc/opensense/social/PersonOp;

    move-result-object v18

    .line 234
    .local v18, mPersonOp:Lcom/htc/opensense/social/PersonOp;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v30

    const-string v31, "xtoken"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/opensense/social/data/Person;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 235
    .local v29, xtoken:Ljava/lang/String;
    const/16 v30, 0x0

    const-string v31, "&"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 236
    .local v25, str1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "oauth_token:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 237
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 238
    .local v26, str2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "oauth_token_secret:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 240
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 241
    .local v10, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v30

    const-string v31, "http.connection.timeout"

    const/16 v32, 0x1770

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-interface/range {v30 .. v32}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 242
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v30

    const-string v31, "http.socket.timeout"

    const/16 v32, 0x1770

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-interface/range {v30 .. v32}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 243
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v20, mStrb:Ljava/lang/StringBuilder;
    const-string v27, "http://music.weibo.com/yueku/cooperate/htc/get_fr_songlist.php"

    .line 246
    .local v27, strUrl:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v30, "?"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "oauth_token="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v30, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "oauth_token_secret="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v30, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "page="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v30, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "num="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "HttpString:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 257
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 258
    .local v5, localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v10, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 259
    .local v6, localHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v30

    const/16 v31, 0xc8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 261
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v30, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v30

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 264
    .local v8, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v21, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .local v24, str:Ljava/lang/String;
    :goto_0
    if-eqz v24, :cond_5

    .line 267
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    goto :goto_0

    .line 270
    :cond_5
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    .local v15, mJSONObject:Lorg/json/JSONObject;
    const-string v30, "retCode"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 272
    .local v23, retCode:I
    if-nez v23, :cond_6

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Get Songlist successful"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 276
    const-string v30, "total"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 277
    .local v28, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "total:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 278
    sput v28, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_FRIEND_SONGLIST:I

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "normal request"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 282
    const-string v30, "Content"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 283
    .local v13, mJSONArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v30

    move/from16 v0, v30

    if-ge v4, v0, :cond_3

    .line 285
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 286
    .local v16, mJsonObject:Lorg/json/JSONObject;
    new-instance v22, Lcom/htc/music/online/sinamusic/WrapperSonglist;

    invoke-direct/range {v22 .. v22}, Lcom/htc/music/online/sinamusic/WrapperSonglist;-><init>()V

    .line 287
    .local v22, mWrapperSonglist:Lcom/htc/music/online/sinamusic/WrapperSonglist;
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setTotalSonglist(I)V

    .line 288
    const-string v30, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistId(I)V

    .line 289
    const-string v30, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistName(Ljava/lang/String;)V

    .line 290
    const-string v30, "image"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistImage(Ljava/lang/String;)V

    .line 291
    const-string v30, "detail_url"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistDetailUrl(Ljava/lang/String;)V

    .line 292
    const-string v30, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistUrl(Ljava/lang/String;)V

    .line 293
    const-string v30, "creater_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistCreaterId(I)V

    .line 294
    const-string v30, "creater"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistCreater(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mArrayWrapperSonglist.size:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 305
    .end local v4           #i:I
    .end local v13           #mJSONArray:Lorg/json/JSONArray;
    .end local v16           #mJsonObject:Lorg/json/JSONObject;
    .end local v22           #mWrapperSonglist:Lcom/htc/music/online/sinamusic/WrapperSonglist;
    .end local v28           #total:I
    :cond_6
    const/16 v30, -0x1

    move/from16 v0, v23

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Server Return : parameter error"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 308
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 309
    .local v11, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 325
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v29           #xtoken:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 328
    .local v3, e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 329
    const/16 v30, -0x6

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v19

    .line 330
    .local v19, mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v19

    .line 311
    .end local v3           #e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .end local v19           #mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v5       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v18       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v24       #str:Ljava/lang/String;
    .restart local v25       #str1:Ljava/lang/String;
    .restart local v26       #str2:Ljava/lang/String;
    .restart local v27       #strUrl:Ljava/lang/String;
    .restart local v29       #xtoken:Ljava/lang/String;
    :cond_7
    const/16 v30, -0x2

    move/from16 v0, v23

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 313
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Server Return : user not login"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 314
    const/16 v30, -0x2

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 315
    .restart local v11       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 332
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v29           #xtoken:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 335
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 336
    const/16 v30, -0x3

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v9

    .line 337
    .local v9, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v9

    .line 317
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v9           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v5       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v18       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v24       #str:Ljava/lang/String;
    .restart local v25       #str1:Ljava/lang/String;
    .restart local v26       #str2:Ljava/lang/String;
    .restart local v27       #strUrl:Ljava/lang/String;
    .restart local v29       #xtoken:Ljava/lang/String;
    :cond_8
    const/16 v30, -0x3

    move/from16 v0, v23

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 319
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Server Return : Get Songlist failed"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 320
    const/16 v30, -0x5

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 321
    .restart local v11       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 339
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v29           #xtoken:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 342
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 343
    const/16 v30, -0x3

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v12

    .line 344
    .local v12, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v12

    .line 346
    .end local v2           #e:Ljava/io/IOException;
    .end local v12           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_3
    move-exception v2

    .line 349
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 350
    const/16 v30, -0x4

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v14

    .line 351
    .local v14, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v14
.end method

.method public getLoginStatus()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 72
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/music/online/sinamusic/InterfaceUtil;->getGoogleAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 73
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 75
    iget-object v2, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 81
    :goto_0
    return v1

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v2, "account null"

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 81
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMusicCategory()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperCategory;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v14, mMusicCategoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperCategory;>;"
    :try_start_0
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 149
    .local v6, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    const-string v18, "http.connection.timeout"

    const/16 v19, 0x1770

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 150
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    const-string v18, "http.socket.timeout"

    const/16 v19, 0x1770

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 151
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    const-string v17, "http://music.weibo.com/yueku/cooperate/htc/music_online.php"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 152
    .local v7, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 154
    .local v8, mHttpResponse:Lorg/apache/http/HttpResponse;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v15, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 157
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 159
    .local v4, mBufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, str:Ljava/lang/String;
    :goto_0
    if-eqz v16, :cond_0

    .line 161
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 165
    .end local v4           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v16           #str:Ljava/lang/String;
    :cond_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 166
    .local v10, mJSONArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_1

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "JSONArray:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 170
    .local v12, mJsonObject:Lorg/json/JSONObject;
    new-instance v13, Lcom/htc/music/online/sinamusic/WrapperCategory;

    invoke-direct {v13}, Lcom/htc/music/online/sinamusic/WrapperCategory;-><init>()V

    .line 171
    .local v13, mMusicCategory:Lcom/htc/music/online/sinamusic/WrapperCategory;
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/music/online/sinamusic/WrapperCategory;->setCategoryTitle(Ljava/lang/String;)V

    .line 172
    const-string v17, "url"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/music/online/sinamusic/WrapperCategory;->setCategoryurl(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 176
    .end local v3           #i:I
    .end local v6           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v7           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v10           #mJSONArray:Lorg/json/JSONArray;
    .end local v12           #mJsonObject:Lorg/json/JSONObject;
    .end local v13           #mMusicCategory:Lcom/htc/music/online/sinamusic/WrapperCategory;
    .end local v15           #mStringBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 179
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 180
    const/16 v17, -0x3

    invoke-static/range {v17 .. v17}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v5

    .line 181
    .local v5, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v5

    .line 183
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v5           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_1
    move-exception v2

    .line 186
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    const/16 v17, -0x3

    invoke-static/range {v17 .. v17}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v9

    .line 188
    .local v9, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v9

    .line 190
    .end local v2           #e:Ljava/io/IOException;
    .end local v9           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_2
    move-exception v2

    .line 193
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 194
    const/16 v17, -0x4

    invoke-static/range {v17 .. v17}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 195
    .local v11, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11

    .line 197
    .end local v2           #e:Lorg/json/JSONException;
    .end local v11           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v3       #i:I
    .restart local v6       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v10       #mJSONArray:Lorg/json/JSONArray;
    .restart local v15       #mStringBuilder:Ljava/lang/StringBuilder;
    :cond_1
    return-object v14
.end method

.method public getRecommendSong(II)Ljava/util/ArrayList;
    .locals 34
    .parameter "start"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 365
    if-ltz p1, :cond_0

    const/16 v31, 0x64

    move/from16 v0, p2

    move/from16 v1, v31

    if-lt v0, v1, :cond_1

    .line 367
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "parameter error: start<=0 or lim>=100"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 368
    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v19

    .line 369
    .local v19, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v19

    .line 372
    .end local v19           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_1
    if-nez p1, :cond_2

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "This is start 0"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 375
    const/16 v31, -0x1

    sput v31, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_RECOMMEND_SONG:I

    .line 378
    :cond_2
    sget v31, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_RECOMMEND_SONG:I

    if-ltz v31, :cond_4

    sget v31, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_RECOMMEND_SONG:I

    move/from16 v0, p1

    move/from16 v1, v31

    if-lt v0, v1, :cond_4

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "no more data"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 381
    const/16 v20, 0x0

    .line 506
    :cond_3
    return-object v20

    .line 384
    :cond_4
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v20, mRecommendSongArraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :try_start_0
    new-instance v14, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 388
    .local v14, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    const-string v32, "http.connection.timeout"

    const/16 v33, 0x1770

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 389
    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    const-string v32, "http.socket.timeout"

    const/16 v33, 0x1770

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 390
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v22, mStrb:Ljava/lang/StringBuilder;
    const-string v29, "http://music.weibo.com/yueku/cooperate/htc/get_wpp_songs.php"

    .line 393
    .local v29, strUrl:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v31, "?"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "start="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v31, "&"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "limit="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "HttpString:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 400
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 401
    .local v10, localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v14, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 402
    .local v11, localHttpResponse:Lorg/apache/http/HttpResponse;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v23, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v31

    const/16 v32, 0xc8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 405
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/InputStreamReader;

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 407
    .local v12, mBufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .local v28, str:Ljava/lang/String;
    :goto_0
    if-eqz v28, :cond_5

    .line 409
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    goto :goto_0

    .line 413
    .end local v12           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v28           #str:Ljava/lang/String;
    :cond_5
    new-instance v18, Lorg/json/JSONObject;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 414
    .local v18, mJSONObject:Lorg/json/JSONObject;
    const-string v31, "retCode"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 415
    .local v27, retCode:I
    if-nez v27, :cond_7

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Get Songlist Successful"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 419
    const-string v31, "total"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 420
    .local v30, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "total:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 421
    sput v30, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_RECOMMEND_SONG:I

    .line 423
    const-string v31, "Content"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 424
    .local v2, JsonArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v31

    if-lez v31, :cond_6

    .line 426
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v7, v0, :cond_3

    .line 428
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 429
    .local v21, mSongJSONObject:Lorg/json/JSONObject;
    new-instance v24, Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-direct/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/WrapperSong;-><init>()V

    .line 431
    .local v24, mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setTotalSong(I)V

    .line 433
    const-string v31, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 434
    .local v8, id:I
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongId(I)V

    .line 436
    const-string v31, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 437
    .local v25, name:Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongName(Ljava/lang/String;)V

    .line 439
    const-string v31, "artist"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, artist:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerName(Ljava/lang/String;)V

    .line 442
    const-string v31, "description"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, description:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongDescription(Ljava/lang/String;)V

    .line 445
    const-string v31, "image"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 448
    .local v9, image:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongImage(Ljava/lang/String;)V

    .line 450
    const-string v31, "playUrl"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 451
    .local v26, playUrl:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongPlayUrl(Ljava/lang/String;)V

    .line 453
    const-string v31, "detail_url"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, detail_url:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongDetailUrl(Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 461
    .end local v3           #artist:Ljava/lang/String;
    .end local v4           #description:Ljava/lang/String;
    .end local v5           #detail_url:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #id:I
    .end local v9           #image:Ljava/lang/String;
    .end local v21           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v24           #mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    .end local v25           #name:Ljava/lang/String;
    .end local v26           #playUrl:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : No match Data"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 462
    const/16 v31, -0x7

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 463
    .local v15, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 485
    .end local v2           #JsonArray:Lorg/json/JSONArray;
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v27           #retCode:I
    .end local v29           #strUrl:Ljava/lang/String;
    .end local v30           #total:I
    :catch_0
    move-exception v6

    .line 488
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 489
    const/16 v31, -0x3

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 490
    .local v13, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13

    .line 466
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v13           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v22       #mStrb:Ljava/lang/StringBuilder;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v27       #retCode:I
    .restart local v29       #strUrl:Ljava/lang/String;
    :cond_7
    const/16 v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 468
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : parameter error"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 469
    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 470
    .restart local v15       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 492
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v27           #retCode:I
    .end local v29           #strUrl:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 495
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 496
    const/16 v31, -0x3

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v16

    .line 497
    .local v16, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v16

    .line 472
    .end local v6           #e:Ljava/io/IOException;
    .end local v16           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v22       #mStrb:Ljava/lang/StringBuilder;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v27       #retCode:I
    .restart local v29       #strUrl:Ljava/lang/String;
    :cond_8
    const/16 v31, -0x2

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 474
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : user not login"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 475
    const/16 v31, -0x2

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 476
    .restart local v15       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 499
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v27           #retCode:I
    .end local v29           #strUrl:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 502
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 503
    const/16 v31, -0x4

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 504
    .local v17, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17

    .line 478
    .end local v6           #e:Lorg/json/JSONException;
    .end local v17           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v22       #mStrb:Ljava/lang/StringBuilder;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v27       #retCode:I
    .restart local v29       #strUrl:Ljava/lang/String;
    :cond_9
    const/16 v31, -0x3

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 480
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : Get Songlist failed"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 481
    const/16 v31, -0x5

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 482
    .restart local v15       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
.end method

.method public getSelfFavouriteSong(II)Ljava/util/ArrayList;
    .locals 42
    .parameter "page"
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 518
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 520
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "parameter error: page<=0 or num<=0"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 521
    const/16 v39, -0x1

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v19

    .line 522
    .local v19, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v19

    .line 525
    .end local v19           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_1
    const/16 v39, 0x1

    move/from16 v0, p1

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "This is page 1"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 528
    const/16 v39, -0x1

    sput v39, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_FAVOURITESONG:I

    .line 531
    :cond_2
    sget v39, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_FAVOURITESONG:I

    if-ltz v39, :cond_4

    sget v39, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_FAVOURITESONG:I

    add-int/lit8 v40, p1, -0x1

    mul-int v40, v40, p2

    sub-int v39, v39, v40

    if-gtz v39, :cond_4

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "no more data"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 535
    const/16 v21, 0x0

    .line 688
    :cond_3
    return-object v21

    .line 539
    :cond_4
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v21, mSelfFavouriteSongArraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/online/sinamusic/SSinaEngine;->getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaAidl;->getLoginUser()Lcom/htc/opensense/social/PersonOp;

    move-result-object v20

    .line 544
    .local v20, mPersonOp:Lcom/htc/opensense/social/PersonOp;
    invoke-virtual/range {v20 .. v20}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v39

    const-string v40, "xtoken"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/opensense/social/data/Person;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 545
    .local v38, xtoken:Ljava/lang/String;
    const/16 v39, 0x0

    const-string v40, "&"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v40

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 546
    .local v34, str1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "oauth_token:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 547
    const-string v39, "&"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    add-int/lit8 v39, v39, 0x1

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v40

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .line 548
    .local v35, str2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "oauth_token_secret:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 550
    new-instance v14, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 551
    .local v14, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v39

    const-string v40, "http.connection.timeout"

    const/16 v41, 0x1770

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-interface/range {v39 .. v41}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 552
    invoke-virtual {v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v39

    const-string v40, "http.socket.timeout"

    const/16 v41, 0x1770

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-interface/range {v39 .. v41}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 553
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .local v24, mStrb:Ljava/lang/StringBuilder;
    const-string v36, "http://music.weibo.com/yueku/cooperate/htc/user_collect_songs.php"

    .line 556
    .local v36, strUrl:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v39, "?"

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "oauth_token="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v39, "&"

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "oauth_token_secret="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v39, "&"

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "page="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v39, "&"

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "num="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "HttpRequest:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 567
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 568
    .local v10, localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v14, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 569
    .local v11, localHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v39

    const/16 v40, 0xc8

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3

    .line 571
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v39, Ljava/io/InputStreamReader;

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v39

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 574
    .local v12, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .local v25, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v33

    .local v33, str:Ljava/lang/String;
    :goto_0
    if-eqz v33, :cond_5

    .line 578
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v33

    goto :goto_0

    .line 582
    :cond_5
    new-instance v18, Lorg/json/JSONObject;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 583
    .local v18, mJSONObject:Lorg/json/JSONObject;
    const-string v39, "retCode"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 584
    .local v29, retCode:I
    if-nez v29, :cond_7

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "Get Song Successful"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 588
    const-string v39, "total"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v37

    .line 589
    .local v37, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "total:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 591
    const-string v39, "Content"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 592
    .local v2, JsonArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v39

    if-lez v39, :cond_6

    .line 594
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v39

    move/from16 v0, v39

    if-ge v8, v0, :cond_3

    .line 596
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 597
    .local v23, mSongJSONObject:Lorg/json/JSONObject;
    new-instance v26, Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-direct/range {v26 .. v26}, Lcom/htc/music/online/sinamusic/WrapperSong;-><init>()V

    .line 599
    .local v26, mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setTotalSong(I)V

    .line 601
    const-string v39, "SONGBASEID"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 602
    .local v9, id:I
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongId(I)V

    .line 604
    const-string v39, "NAME"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 605
    .local v27, name:Ljava/lang/String;
    invoke-virtual/range {v26 .. v27}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongName(Ljava/lang/String;)V

    .line 607
    const-string v39, "SINGERID"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 608
    .local v30, singerId:I
    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerId(I)V

    .line 610
    const-string v39, "SINGERCNAME"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 611
    .local v31, singerName:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerName(Ljava/lang/String;)V

    .line 613
    const-string v39, "ALBUMID"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 614
    .local v3, albumId:I
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/htc/music/online/sinamusic/WrapperSong;->setAlbumId(I)V

    .line 616
    const-string v39, "ALBUMCNAME"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 617
    .local v4, albumName:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/htc/music/online/sinamusic/WrapperSong;->setAlbumName(Ljava/lang/String;)V

    .line 619
    const-string v39, "IMGURL"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 622
    .local v32, songImage:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongImage(Ljava/lang/String;)V

    .line 624
    const-string v39, "PLAYURL"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 625
    .local v28, playUrl:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongPlayUrl(Ljava/lang/String;)V

    .line 627
    const-string v39, "detail_url"

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 628
    .local v5, detail_url:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongDetailUrl(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 635
    .end local v3           #albumId:I
    .end local v4           #albumName:Ljava/lang/String;
    .end local v5           #detail_url:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #id:I
    .end local v23           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v26           #mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    .end local v27           #name:Ljava/lang/String;
    .end local v28           #playUrl:Ljava/lang/String;
    .end local v30           #singerId:I
    .end local v31           #singerName:Ljava/lang/String;
    .end local v32           #songImage:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "Server Return : No match Data"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 636
    const/16 v39, -0x7

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 637
    .local v15, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 660
    .end local v2           #JsonArray:Lorg/json/JSONArray;
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v20           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v24           #mStrb:Ljava/lang/StringBuilder;
    .end local v25           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v29           #retCode:I
    .end local v33           #str:Ljava/lang/String;
    .end local v34           #str1:Ljava/lang/String;
    .end local v35           #str2:Ljava/lang/String;
    .end local v36           #strUrl:Ljava/lang/String;
    .end local v37           #total:I
    .end local v38           #xtoken:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 663
    .local v7, e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-virtual {v7}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 664
    const/16 v39, -0x6

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v22

    .line 665
    .local v22, mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v22

    .line 640
    .end local v7           #e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .end local v22           #mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v12       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v14       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v20       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v24       #mStrb:Ljava/lang/StringBuilder;
    .restart local v25       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v29       #retCode:I
    .restart local v33       #str:Ljava/lang/String;
    .restart local v34       #str1:Ljava/lang/String;
    .restart local v35       #str2:Ljava/lang/String;
    .restart local v36       #strUrl:Ljava/lang/String;
    .restart local v38       #xtoken:Ljava/lang/String;
    :cond_7
    const/16 v39, -0x1

    move/from16 v0, v29

    move/from16 v1, v39

    if-ne v0, v1, :cond_8

    .line 642
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "Server Return : parameter error"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 643
    const/16 v39, -0x1

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 644
    .restart local v15       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 667
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v20           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v24           #mStrb:Ljava/lang/StringBuilder;
    .end local v25           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v29           #retCode:I
    .end local v33           #str:Ljava/lang/String;
    .end local v34           #str1:Ljava/lang/String;
    .end local v35           #str2:Ljava/lang/String;
    .end local v36           #strUrl:Ljava/lang/String;
    .end local v38           #xtoken:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 670
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 671
    const/16 v39, -0x3

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 672
    .local v13, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13

    .line 646
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v13           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v12       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v14       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v20       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v24       #mStrb:Ljava/lang/StringBuilder;
    .restart local v25       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v29       #retCode:I
    .restart local v33       #str:Ljava/lang/String;
    .restart local v34       #str1:Ljava/lang/String;
    .restart local v35       #str2:Ljava/lang/String;
    .restart local v36       #strUrl:Ljava/lang/String;
    .restart local v38       #xtoken:Ljava/lang/String;
    :cond_8
    const/16 v39, -0x2

    move/from16 v0, v29

    move/from16 v1, v39

    if-ne v0, v1, :cond_9

    .line 648
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "Server Return : user not login"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 649
    const/16 v39, -0x2

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 650
    .restart local v15       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 674
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v20           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v24           #mStrb:Ljava/lang/StringBuilder;
    .end local v25           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v29           #retCode:I
    .end local v33           #str:Ljava/lang/String;
    .end local v34           #str1:Ljava/lang/String;
    .end local v35           #str2:Ljava/lang/String;
    .end local v36           #strUrl:Ljava/lang/String;
    .end local v38           #xtoken:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 677
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 678
    const/16 v39, -0x3

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v16

    .line 679
    .local v16, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v16

    .line 652
    .end local v6           #e:Ljava/io/IOException;
    .end local v16           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v12       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v14       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v20       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v24       #mStrb:Ljava/lang/StringBuilder;
    .restart local v25       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v29       #retCode:I
    .restart local v33       #str:Ljava/lang/String;
    .restart local v34       #str1:Ljava/lang/String;
    .restart local v35       #str2:Ljava/lang/String;
    .restart local v36       #strUrl:Ljava/lang/String;
    .restart local v38       #xtoken:Ljava/lang/String;
    :cond_9
    const/16 v39, -0x3

    move/from16 v0, v29

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    .line 654
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v39, v0

    const-string v40, "Server Return : Get Songlist failed"

    invoke-virtual/range {v39 .. v40}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 655
    const/16 v39, -0x5

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 656
    .restart local v15       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_3
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 681
    .end local v10           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v14           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v15           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v20           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v24           #mStrb:Ljava/lang/StringBuilder;
    .end local v25           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v29           #retCode:I
    .end local v33           #str:Ljava/lang/String;
    .end local v34           #str1:Ljava/lang/String;
    .end local v35           #str2:Ljava/lang/String;
    .end local v36           #strUrl:Ljava/lang/String;
    .end local v38           #xtoken:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 684
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 685
    const/16 v39, -0x4

    invoke-static/range {v39 .. v39}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 686
    .local v17, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17
.end method

.method public getSelfSonglist(II)Ljava/util/ArrayList;
    .locals 34
    .parameter "page"
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSonglist;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1695
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 1697
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "parameter error: page<=0 or num<=0"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1698
    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 1699
    .local v17, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17

    .line 1702
    .end local v17           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_1
    const/16 v31, 0x1

    move/from16 v0, p1

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "This is page 1"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1705
    const/16 v31, -0x1

    sput v31, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_SONGLIST:I

    .line 1708
    :cond_2
    sget v31, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_SONGLIST:I

    if-ltz v31, :cond_4

    sget v31, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_SONGLIST:I

    add-int/lit8 v32, p1, -0x1

    mul-int v32, v32, p2

    sub-int v31, v31, v32

    if-gtz v31, :cond_4

    .line 1711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "no more data"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1712
    const/4 v7, 0x0

    .line 1843
    :cond_3
    return-object v7

    .line 1715
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1718
    .local v7, mArrayWrapperSonglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSonglist;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/online/sinamusic/SSinaEngine;->getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaAidl;->getLoginUser()Lcom/htc/opensense/social/PersonOp;

    move-result-object v18

    .line 1721
    .local v18, mPersonOp:Lcom/htc/opensense/social/PersonOp;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/htc/opensense/social/data/Profile;->getUser_name()Ljava/lang/String;

    move-result-object v29

    .line 1722
    .local v29, username:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v31

    const-string v32, "xtoken"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/opensense/social/data/Person;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 1723
    .local v30, xtoken:Ljava/lang/String;
    const/16 v31, 0x0

    const-string v32, "&"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 1724
    .local v25, str1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "oauth_token:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1725
    const-string v31, "&"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v32

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 1726
    .local v26, str2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "oauth_token_secret:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1728
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1729
    .local v10, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    const-string v32, "http.connection.timeout"

    const/16 v33, 0x1770

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1730
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    const-string v32, "http.socket.timeout"

    const/16 v33, 0x1770

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1731
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1733
    .local v20, mStrb:Ljava/lang/StringBuilder;
    const-string v27, "http://music.weibo.com/yueku/cooperate/htc/get_my_songlist.php"

    .line 1734
    .local v27, strUrl:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    const-string v31, "?"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "oauth_token="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    const-string v31, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "oauth_token_secret="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    const-string v31, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "page="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    const-string v31, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "num="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "HttpString:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1745
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1746
    .local v5, localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v10, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1747
    .local v6, localHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v31

    const/16 v32, 0xc8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 1749
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v31

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1752
    .local v8, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1753
    .local v21, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .local v24, str:Ljava/lang/String;
    :goto_0
    if-eqz v24, :cond_5

    .line 1755
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    goto :goto_0

    .line 1758
    :cond_5
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1759
    .local v15, mJSONObject:Lorg/json/JSONObject;
    const-string v31, "retCode"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 1760
    .local v23, retCode:I
    if-nez v23, :cond_7

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Get Songlist successful"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1764
    const-string v31, "total"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 1765
    .local v28, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "total:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1766
    sput v28, Lcom/htc/music/online/sinamusic/SSinaEngine;->TOTAL_SELF_SONGLIST:I

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "normal request"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1768
    const-string v31, "Content"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 1769
    .local v13, mJSONArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v4, v0, :cond_3

    .line 1771
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 1772
    .local v16, mJsonObject:Lorg/json/JSONObject;
    new-instance v22, Lcom/htc/music/online/sinamusic/WrapperSonglist;

    invoke-direct/range {v22 .. v22}, Lcom/htc/music/online/sinamusic/WrapperSonglist;-><init>()V

    .line 1773
    .local v22, mWrapperSonglist:Lcom/htc/music/online/sinamusic/WrapperSonglist;
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setTotalSonglist(I)V

    .line 1775
    const-string v31, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    if-nez v31, :cond_6

    .line 1777
    const-string v31, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistId(I)V

    .line 1778
    const-string v31, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistName(Ljava/lang/String;)V

    .line 1779
    const-string v31, "image"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistImage(Ljava/lang/String;)V

    .line 1780
    const-string v31, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistUrl(Ljava/lang/String;)V

    .line 1781
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1792
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "mArrayWrapperSonglist.size:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1769
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1785
    :cond_6
    const-string v31, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistId(I)V

    .line 1786
    const-string v31, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistName(Ljava/lang/String;)V

    .line 1787
    const-string v31, "image"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistImage(Ljava/lang/String;)V

    .line 1788
    const-string v31, "detail_url"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistDetailUrl(Ljava/lang/String;)V

    .line 1789
    const-string v31, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglist;->setSonglistUrl(Ljava/lang/String;)V

    .line 1790
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    .line 1815
    .end local v4           #i:I
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v13           #mJSONArray:Lorg/json/JSONArray;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v16           #mJsonObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v22           #mWrapperSonglist:Lcom/htc/music/online/sinamusic/WrapperSonglist;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v28           #total:I
    .end local v29           #username:Ljava/lang/String;
    .end local v30           #xtoken:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1818
    .local v3, e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 1819
    const/16 v31, -0x6

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v19

    .line 1820
    .local v19, mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v19

    .line 1795
    .end local v3           #e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .end local v19           #mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v5       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v18       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v24       #str:Ljava/lang/String;
    .restart local v25       #str1:Ljava/lang/String;
    .restart local v26       #str2:Ljava/lang/String;
    .restart local v27       #strUrl:Ljava/lang/String;
    .restart local v29       #username:Ljava/lang/String;
    .restart local v30       #xtoken:Ljava/lang/String;
    :cond_7
    const/16 v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 1797
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : parameter error"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1798
    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1799
    .local v11, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1822
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v29           #username:Ljava/lang/String;
    .end local v30           #xtoken:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1825
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1826
    const/16 v31, -0x3

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v9

    .line 1827
    .local v9, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v9

    .line 1801
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v9           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v5       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v18       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v24       #str:Ljava/lang/String;
    .restart local v25       #str1:Ljava/lang/String;
    .restart local v26       #str2:Ljava/lang/String;
    .restart local v27       #strUrl:Ljava/lang/String;
    .restart local v29       #username:Ljava/lang/String;
    .restart local v30       #xtoken:Ljava/lang/String;
    :cond_8
    const/16 v31, -0x2

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 1803
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : user not login"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1804
    const/16 v31, -0x2

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1805
    .restart local v11       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1829
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v29           #username:Ljava/lang/String;
    .end local v30           #xtoken:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 1832
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1833
    const/16 v31, -0x3

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v12

    .line 1834
    .local v12, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v12

    .line 1807
    .end local v2           #e:Ljava/io/IOException;
    .end local v12           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v5       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v18       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v24       #str:Ljava/lang/String;
    .restart local v25       #str1:Ljava/lang/String;
    .restart local v26       #str2:Ljava/lang/String;
    .restart local v27       #strUrl:Ljava/lang/String;
    .restart local v29       #username:Ljava/lang/String;
    .restart local v30       #xtoken:Ljava/lang/String;
    :cond_9
    const/16 v31, -0x3

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 1809
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : Get Songlist failed"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1810
    const/16 v31, -0x5

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1811
    .restart local v11       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_3
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1836
    .end local v5           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #str:Ljava/lang/String;
    .end local v25           #str1:Ljava/lang/String;
    .end local v26           #str2:Ljava/lang/String;
    .end local v27           #strUrl:Ljava/lang/String;
    .end local v29           #username:Ljava/lang/String;
    .end local v30           #xtoken:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 1839
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1840
    const/16 v31, -0x4

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v14

    .line 1841
    .local v14, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v14
.end method

.method public getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mSinaAidl:Lcom/htc/music/online/sinamusic/SinaAidl;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/music/online/sinamusic/SinaAidl;->getInstance(Landroid/content/Context;)Lcom/htc/music/online/sinamusic/SinaAidl;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mSinaAidl:Lcom/htc/music/online/sinamusic/SinaAidl;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mSinaAidl:Lcom/htc/music/online/sinamusic/SinaAidl;

    return-object v0
.end method

.method public getSongDetail(I)Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    .locals 36
    .parameter "songid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "songid:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 887
    if-nez p1, :cond_0

    .line 889
    const/16 v33, -0x1

    invoke-static/range {v33 .. v33}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 890
    .local v17, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17

    .line 893
    .end local v17           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_0
    new-instance v20, Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    invoke-direct/range {v20 .. v20}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;-><init>()V

    .line 897
    .local v20, mWrapperSongDetail:Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    :try_start_0
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 898
    .local v9, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v33

    const-string v34, "http.connection.timeout"

    const/16 v35, 0x2710

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-interface/range {v33 .. v35}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 899
    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v33

    const-string v34, "http.socket.timeout"

    const/16 v35, 0x2710

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-interface/range {v33 .. v35}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 901
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .local v18, mStrb:Ljava/lang/StringBuilder;
    const-string v32, "http://music.weibo.com/yueku/cooperate/htc/get_song_info.php"

    .line 903
    .local v32, strUrl:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    const-string v33, "?"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "id="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "HttpRequest:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 909
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 910
    .local v11, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v9, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 911
    .local v12, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v33

    const/16 v34, 0xc8

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2

    .line 913
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v33, Ljava/io/InputStreamReader;

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v33

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 916
    .local v7, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 917
    .local v19, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v31

    .local v31, str:Ljava/lang/String;
    :goto_0
    if-eqz v31, :cond_1

    .line 919
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v31

    goto :goto_0

    .line 922
    :cond_1
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 923
    .local v15, mJSONObject:Lorg/json/JSONObject;
    const-string v33, "retCode"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 924
    .local v23, retCode:I
    if-nez v23, :cond_3

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    const-string v34, "Get Song detail successful"

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 928
    const-string v33, "Content"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 929
    .local v16, mJSONObject2:Lorg/json/JSONObject;
    const-string v33, "songId"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 930
    .local v26, songId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "songId:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 931
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongId(I)V

    .line 933
    const-string v33, "songName"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 934
    .local v29, songName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "songName:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 935
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongName(Ljava/lang/String;)V

    .line 937
    const-string v33, "singerId"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 938
    .local v24, singerId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "singerId:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 939
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSingerId(I)V

    .line 941
    const-string v33, "singerName"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 942
    .local v25, singerName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "singerName:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 943
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSingerName(Ljava/lang/String;)V

    .line 945
    const-string v33, "albumId"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 946
    .local v2, albumId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "albumId:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 947
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setAlbumId(I)V

    .line 949
    const-string v33, "albumName"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 950
    .local v3, albumName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "albumName:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 951
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setAlbumName(Ljava/lang/String;)V

    .line 953
    const-string v33, "songImage"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 954
    .local v27, songImage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "songImage:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 955
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongImage(Ljava/lang/String;)V

    .line 957
    const-string v33, "style"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 958
    .local v30, songStyle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "style:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 959
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongStyle(Ljava/lang/String;)V

    .line 961
    const-string v33, "lyric"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 962
    .local v28, songLyric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "songLyric:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 963
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongLyric(Ljava/lang/String;)V

    .line 965
    const-string v33, "playTime"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 966
    .local v21, playTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "playTime:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 967
    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongPlayTime(Ljava/lang/String;)V

    .line 969
    const-string v33, "playUrl"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 970
    .local v22, playUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "playUrl:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 971
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongPlayUrl(Ljava/lang/String;)V

    .line 973
    const-string v33, "downFlag"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 974
    .local v5, downFlag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "downFlag:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 975
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongDownFlag(Ljava/lang/String;)V

    .line 977
    const-string v33, "detail_url"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 978
    .local v4, detail_url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "detail_url:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 979
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongDetailUrl(Ljava/lang/String;)V

    .line 1016
    .end local v2           #albumId:I
    .end local v3           #albumName:Ljava/lang/String;
    .end local v4           #detail_url:Ljava/lang/String;
    .end local v5           #downFlag:Ljava/lang/String;
    .end local v7           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v16           #mJSONObject2:Lorg/json/JSONObject;
    .end local v19           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v21           #playTime:Ljava/lang/String;
    .end local v22           #playUrl:Ljava/lang/String;
    .end local v23           #retCode:I
    .end local v24           #singerId:I
    .end local v25           #singerName:Ljava/lang/String;
    .end local v26           #songId:I
    .end local v27           #songImage:Ljava/lang/String;
    .end local v28           #songLyric:Ljava/lang/String;
    .end local v29           #songName:Ljava/lang/String;
    .end local v30           #songStyle:Ljava/lang/String;
    .end local v31           #str:Ljava/lang/String;
    :cond_2
    return-object v20

    .line 981
    .restart local v7       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v19       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v31       #str:Ljava/lang/String;
    :cond_3
    const/16 v33, -0x1

    move/from16 v0, v23

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    const-string v34, "Server Return : parameter error"

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 984
    const/16 v33, -0x1

    invoke-static/range {v33 .. v33}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v10

    .line 985
    .local v10, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v10
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 995
    .end local v7           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v9           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v11           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v12           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mStrb:Ljava/lang/StringBuilder;
    .end local v19           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v31           #str:Ljava/lang/String;
    .end local v32           #strUrl:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 998
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 999
    const/16 v33, -0x3

    invoke-static/range {v33 .. v33}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v8

    .line 1000
    .local v8, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v8

    .line 987
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v8           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v7       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v9       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v11       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v12       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v15       #mJSONObject:Lorg/json/JSONObject;
    .restart local v18       #mStrb:Ljava/lang/StringBuilder;
    .restart local v19       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v31       #str:Ljava/lang/String;
    .restart local v32       #strUrl:Ljava/lang/String;
    :cond_4
    const/16 v33, -0x2

    move/from16 v0, v23

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 989
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v33, v0

    const-string v34, "Server Return : Get Songlist failed"

    invoke-virtual/range {v33 .. v34}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 990
    const/16 v33, -0x5

    invoke-static/range {v33 .. v33}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v10

    .line 991
    .restart local v10       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v10
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1002
    .end local v7           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v9           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v11           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v12           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v15           #mJSONObject:Lorg/json/JSONObject;
    .end local v18           #mStrb:Ljava/lang/StringBuilder;
    .end local v19           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v31           #str:Ljava/lang/String;
    .end local v32           #strUrl:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 1005
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1006
    const/16 v33, -0x3

    invoke-static/range {v33 .. v33}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 1007
    .local v13, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13

    .line 1009
    .end local v6           #e:Ljava/io/IOException;
    .end local v13           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_2
    move-exception v6

    .line 1012
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 1013
    const/16 v33, -0x4

    invoke-static/range {v33 .. v33}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v14

    .line 1014
    .local v14, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v14
.end method

.method public getSonglistDetail(Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    .locals 53
    .parameter "sUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 699
    move-object/from16 v48, p1

    .line 700
    .local v48, strUrl:Ljava/lang/String;
    if-nez v48, :cond_0

    .line 702
    const/16 v50, -0x1

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v24

    .line 703
    .local v24, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v24

    .line 706
    .end local v24           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_0
    new-instance v29, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    invoke-direct/range {v29 .. v29}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;-><init>()V

    .line 710
    .local v29, mWrapperSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "The request URL : "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 712
    new-instance v15, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 713
    .local v15, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v50

    const-string v51, "http.connection.timeout"

    const/16 v52, 0x1770

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    invoke-interface/range {v50 .. v52}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 714
    invoke-virtual {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v50

    const-string v51, "http.socket.timeout"

    const/16 v52, 0x1770

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    invoke-interface/range {v50 .. v52}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 715
    new-instance v17, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 717
    .local v17, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 718
    .local v18, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v50

    const/16 v51, 0xc8

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_3

    .line 720
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v50, Ljava/io/InputStreamReader;

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v51

    invoke-interface/range {v51 .. v51}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v50

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 723
    .local v13, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .local v27, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v47

    .local v47, str:Ljava/lang/String;
    :goto_0
    if-eqz v47, :cond_1

    .line 726
    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v47

    goto :goto_0

    .line 729
    :cond_1
    new-instance v21, Lorg/json/JSONObject;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v21

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 730
    .local v21, mJSONObject:Lorg/json/JSONObject;
    const-string v50, "retCode"

    move-object/from16 v0, v21

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v38

    .line 731
    .local v38, retCode:I
    if-nez v38, :cond_5

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    const-string v51, "Get Songlist successful"

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 735
    const-string v50, "Content"

    move-object/from16 v0, v21

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 736
    .local v22, mJSONObject2:Lorg/json/JSONObject;
    const-string v50, "id"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v45

    .line 737
    .local v45, songlistId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "songlistId:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 738
    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistId(I)V

    .line 741
    const-string v50, "owner"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 742
    .local v23, mOwner:Lorg/json/JSONObject;
    const-string v50, "sinaid"

    move-object/from16 v0, v23

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    .line 743
    .local v34, owner_sinaid:I
    const-string v50, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 744
    .local v33, owner_name:Ljava/lang/String;
    const-string v50, "image"

    move-object/from16 v0, v23

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 745
    .local v32, owner_image:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "owner_sinaid:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "owner_name:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "owner_image:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 748
    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistOwnerSinaId(I)V

    .line 749
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistOwnerName(Ljava/lang/String;)V

    .line 750
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistOwnerImage(Ljava/lang/String;)V

    .line 752
    const-string v50, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 753
    .local v31, name:Ljava/lang/String;
    const-string v50, "songsum"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 754
    .local v46, songsum:Ljava/lang/String;
    const-string v50, "collect"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 755
    .local v5, collect:Ljava/lang/String;
    const-string v50, "share"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 756
    .local v39, share:Ljava/lang/String;
    const-string v50, "createtime"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 757
    .local v6, createtime:Ljava/lang/String;
    const-string v50, "updatetime"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 758
    .local v49, updatetime:Ljava/lang/String;
    const-string v50, "mid"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 759
    .local v30, mid:I
    const-string v50, "hot"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 760
    .local v9, hot:Ljava/lang/String;
    const-string v50, "photo"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 761
    .local v35, photo:Ljava/lang/String;
    const-string v50, "intro"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 762
    .local v12, intro:Ljava/lang/String;
    const-string v50, "detail_url"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 763
    .local v7, detail_url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "name:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "songsum:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "collect:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "share:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "createtime:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "updatetime:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "mid:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "hot:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "photo:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "intro:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "detail_url:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 775
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistName(Ljava/lang/String;)V

    .line 776
    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistSongSum(Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistCollect(Ljava/lang/String;)V

    .line 778
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistShare(Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistCreatetime(Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, v29

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistUpdatetime(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {v29 .. v30}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistWeiboId(I)V

    .line 782
    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistHot(Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistPhoto(Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistIntro(Ljava/lang/String;)V

    .line 785
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistDetailUrl(Ljava/lang/String;)V

    .line 788
    const-string v50, "songs"

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 789
    .local v2, JsonArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v50

    if-lez v50, :cond_4

    .line 791
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v26, mSongitemlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v50

    move/from16 v0, v50

    if-ge v10, v0, :cond_2

    .line 794
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 795
    .local v25, mSongJSONObject:Lorg/json/JSONObject;
    new-instance v28, Lcom/htc/music/online/sinamusic/WrapperSong;

    invoke-direct/range {v28 .. v28}, Lcom/htc/music/online/sinamusic/WrapperSong;-><init>()V

    .line 797
    .local v28, mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    const-string v50, "SONGBASEID"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v43

    .line 798
    .local v43, songId:I
    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongId(I)V

    .line 800
    const-string v50, "NAME"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 801
    .local v44, songName:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongName(Ljava/lang/String;)V

    .line 803
    const-string v50, "ALBUMID"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 804
    .local v3, albumId:I
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/htc/music/online/sinamusic/WrapperSong;->setAlbumId(I)V

    .line 806
    const-string v50, "ALBUMCNAME"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 807
    .local v4, albumName:Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/htc/music/online/sinamusic/WrapperSong;->setAlbumName(Ljava/lang/String;)V

    .line 809
    const-string v50, "SINGERID"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v40

    .line 810
    .local v40, singerId:I
    move-object/from16 v0, v28

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerId(I)V

    .line 812
    const-string v50, "SINGERCNAME"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 813
    .local v41, singerName:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSingerName(Ljava/lang/String;)V

    .line 815
    const-string v50, "PLAYTIME"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 816
    .local v36, playTime:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongPlayTime(Ljava/lang/String;)V

    .line 818
    const-string v50, "PLAYURL"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 819
    .local v37, playUrl:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongPlayUrl(Ljava/lang/String;)V

    .line 821
    const-string v50, "IMGURL"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 822
    .local v11, imageUrl:Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongImage(Ljava/lang/String;)V

    .line 824
    const-string v50, "detail_url"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 825
    .local v42, songDetailUrl:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSong;->setSongDetailUrl(Ljava/lang/String;)V

    .line 827
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "songItemlist.size:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 792
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 830
    .end local v3           #albumId:I
    .end local v4           #albumName:Ljava/lang/String;
    .end local v11           #imageUrl:Ljava/lang/String;
    .end local v25           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v28           #mWrapperSong:Lcom/htc/music/online/sinamusic/WrapperSong;
    .end local v36           #playTime:Ljava/lang/String;
    .end local v37           #playUrl:Ljava/lang/String;
    .end local v40           #singerId:I
    .end local v41           #singerName:Ljava/lang/String;
    .end local v42           #songDetailUrl:Ljava/lang/String;
    .end local v43           #songId:I
    .end local v44           #songName:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSongItemlist(Ljava/util/ArrayList;)V

    .line 874
    .end local v2           #JsonArray:Lorg/json/JSONArray;
    .end local v5           #collect:Ljava/lang/String;
    .end local v6           #createtime:Ljava/lang/String;
    .end local v7           #detail_url:Ljava/lang/String;
    .end local v9           #hot:Ljava/lang/String;
    .end local v10           #i:I
    .end local v12           #intro:Ljava/lang/String;
    .end local v13           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v21           #mJSONObject:Lorg/json/JSONObject;
    .end local v22           #mJSONObject2:Lorg/json/JSONObject;
    .end local v23           #mOwner:Lorg/json/JSONObject;
    .end local v26           #mSongitemlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    .end local v27           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v30           #mid:I
    .end local v31           #name:Ljava/lang/String;
    .end local v32           #owner_image:Ljava/lang/String;
    .end local v33           #owner_name:Ljava/lang/String;
    .end local v34           #owner_sinaid:I
    .end local v35           #photo:Ljava/lang/String;
    .end local v38           #retCode:I
    .end local v39           #share:Ljava/lang/String;
    .end local v45           #songlistId:I
    .end local v46           #songsum:Ljava/lang/String;
    .end local v47           #str:Ljava/lang/String;
    .end local v49           #updatetime:Ljava/lang/String;
    :cond_3
    return-object v29

    .line 834
    .restart local v2       #JsonArray:Lorg/json/JSONArray;
    .restart local v5       #collect:Ljava/lang/String;
    .restart local v6       #createtime:Ljava/lang/String;
    .restart local v7       #detail_url:Ljava/lang/String;
    .restart local v9       #hot:Ljava/lang/String;
    .restart local v12       #intro:Ljava/lang/String;
    .restart local v13       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v21       #mJSONObject:Lorg/json/JSONObject;
    .restart local v22       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v23       #mOwner:Lorg/json/JSONObject;
    .restart local v27       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v30       #mid:I
    .restart local v31       #name:Ljava/lang/String;
    .restart local v32       #owner_image:Ljava/lang/String;
    .restart local v33       #owner_name:Ljava/lang/String;
    .restart local v34       #owner_sinaid:I
    .restart local v35       #photo:Ljava/lang/String;
    .restart local v38       #retCode:I
    .restart local v39       #share:Ljava/lang/String;
    .restart local v45       #songlistId:I
    .restart local v46       #songsum:Ljava/lang/String;
    .restart local v47       #str:Ljava/lang/String;
    .restart local v49       #updatetime:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    const-string v51, "Server Return : No match Data"

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 835
    const/16 v50, -0x7

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v16

    .line 836
    .local v16, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v16
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 853
    .end local v2           #JsonArray:Lorg/json/JSONArray;
    .end local v5           #collect:Ljava/lang/String;
    .end local v6           #createtime:Ljava/lang/String;
    .end local v7           #detail_url:Ljava/lang/String;
    .end local v9           #hot:Ljava/lang/String;
    .end local v12           #intro:Ljava/lang/String;
    .end local v13           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v15           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v16           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v17           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v18           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v21           #mJSONObject:Lorg/json/JSONObject;
    .end local v22           #mJSONObject2:Lorg/json/JSONObject;
    .end local v23           #mOwner:Lorg/json/JSONObject;
    .end local v27           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v30           #mid:I
    .end local v31           #name:Ljava/lang/String;
    .end local v32           #owner_image:Ljava/lang/String;
    .end local v33           #owner_name:Ljava/lang/String;
    .end local v34           #owner_sinaid:I
    .end local v35           #photo:Ljava/lang/String;
    .end local v38           #retCode:I
    .end local v39           #share:Ljava/lang/String;
    .end local v45           #songlistId:I
    .end local v46           #songsum:Ljava/lang/String;
    .end local v47           #str:Ljava/lang/String;
    .end local v49           #updatetime:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 856
    .local v8, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v8}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 857
    const/16 v50, -0x3

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v14

    .line 858
    .local v14, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v14

    .line 839
    .end local v8           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v14           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v13       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v15       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v18       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v21       #mJSONObject:Lorg/json/JSONObject;
    .restart local v27       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v38       #retCode:I
    .restart local v47       #str:Ljava/lang/String;
    :cond_5
    const/16 v50, -0x1

    move/from16 v0, v38

    move/from16 v1, v50

    if-ne v0, v1, :cond_6

    .line 841
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    const-string v51, "Server Return : parameter error"

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 842
    const/16 v50, -0x1

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v16

    .line 843
    .restart local v16       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v16
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 860
    .end local v13           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v15           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v16           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v17           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v18           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v21           #mJSONObject:Lorg/json/JSONObject;
    .end local v27           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v38           #retCode:I
    .end local v47           #str:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 863
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 864
    const/16 v50, -0x3

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v19

    .line 865
    .local v19, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v19

    .line 845
    .end local v8           #e:Ljava/io/IOException;
    .end local v19           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v13       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v15       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v18       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v21       #mJSONObject:Lorg/json/JSONObject;
    .restart local v27       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v38       #retCode:I
    .restart local v47       #str:Ljava/lang/String;
    :cond_6
    const/16 v50, -0x2

    move/from16 v0, v38

    move/from16 v1, v50

    if-ne v0, v1, :cond_3

    .line 847
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v50, v0

    const-string v51, "Server Return : Get Songlist failed"

    invoke-virtual/range {v50 .. v51}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 848
    const/16 v50, -0x5

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v16

    .line 849
    .restart local v16       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v16
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 867
    .end local v13           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v15           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v16           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v17           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v18           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v21           #mJSONObject:Lorg/json/JSONObject;
    .end local v27           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v38           #retCode:I
    .end local v47           #str:Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 870
    .local v8, e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 871
    const/16 v50, -0x4

    invoke-static/range {v50 .. v50}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v20

    .line 872
    .local v20, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v20
.end method

.method public removeFromFavourite(I)Z
    .locals 27
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1126
    if-nez p1, :cond_0

    .line 1128
    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 1129
    .local v13, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13

    .line 1134
    .end local v13           #mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/online/sinamusic/SSinaEngine;->getSinaAidl()Lcom/htc/music/online/sinamusic/SinaAidl;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaAidl;->getLoginUser()Lcom/htc/opensense/social/PersonOp;

    move-result-object v14

    .line 1136
    .local v14, mPersonOp:Lcom/htc/opensense/social/PersonOp;
    invoke-virtual {v14}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v24

    const-string v25, "xtoken"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/opensense/social/data/Person;->getExtraValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1137
    .local v23, xtoken:Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "&"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1138
    .local v20, str1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "oauth_token:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1139
    const-string v24, "&"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 1140
    .local v21, str2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "oauth_token_secret:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1142
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1143
    .local v8, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    const-string v25, "http.connection.timeout"

    const/16 v26, 0x1770

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1144
    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    const-string v25, "http.socket.timeout"

    const/16 v26, 0x1770

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1145
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1147
    .local v16, mStrb:Ljava/lang/StringBuilder;
    const-string v22, "http://music.weibo.com/yueku/cooperate/htc/song_collect_del.php"

    .line 1148
    .local v22, strUrl:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    const-string v24, "?"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oauth_token="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    const-string v24, "&"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oauth_token_secret="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    const-string v24, "&"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "songid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "HttpRequest:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1157
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v4, localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v8, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 1159
    .local v5, localHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 1161
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1164
    .local v6, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1165
    .local v17, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .local v19, str:Ljava/lang/String;
    :goto_0
    if-eqz v19, :cond_1

    .line 1168
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 1171
    :cond_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v12, mJSONObject:Lorg/json/JSONObject;
    const-string v24, "retCode"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1173
    .local v18, retCode:I
    if-nez v18, :cond_2

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    const-string v25, "Server Return : Remove successful"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1176
    const/16 v24, 0x1

    .line 1214
    .end local v6           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mJSONObject:Lorg/json/JSONObject;
    .end local v17           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v18           #retCode:I
    .end local v19           #str:Ljava/lang/String;
    :goto_1
    return v24

    .line 1180
    .restart local v6       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v12       #mJSONObject:Lorg/json/JSONObject;
    .restart local v17       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v18       #retCode:I
    .restart local v19       #str:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v24, v0

    const-string v25, "Server Return : Remove failed"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1181
    const/16 v24, -0x5

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v9

    .line 1182
    .local v9, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v9
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1186
    .end local v4           #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #localHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v6           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v8           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v9           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v12           #mJSONObject:Lorg/json/JSONObject;
    .end local v14           #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .end local v16           #mStrb:Ljava/lang/StringBuilder;
    .end local v17           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v18           #retCode:I
    .end local v19           #str:Ljava/lang/String;
    .end local v20           #str1:Ljava/lang/String;
    .end local v21           #str2:Ljava/lang/String;
    .end local v22           #strUrl:Ljava/lang/String;
    .end local v23           #xtoken:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1189
    .local v3, e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 1190
    const/16 v24, -0x6

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 1191
    .local v15, mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15

    .line 1193
    .end local v3           #e1:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .end local v15           #mSocialNetworkException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_1
    move-exception v2

    .line 1196
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1197
    const/16 v24, -0x3

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v7

    .line 1198
    .local v7, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v7

    .line 1200
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v7           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_2
    move-exception v2

    .line 1203
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1204
    const/16 v24, -0x3

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v10

    .line 1205
    .local v10, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v10

    .line 1207
    .end local v2           #e:Ljava/io/IOException;
    .end local v10           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    :catch_3
    move-exception v2

    .line 1210
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1211
    const/16 v24, -0x4

    invoke-static/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1212
    .local v11, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11

    .line 1214
    .end local v2           #e:Lorg/json/JSONException;
    .end local v11           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v4       #localHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #localHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v14       #mPersonOp:Lcom/htc/opensense/social/PersonOp;
    .restart local v16       #mStrb:Ljava/lang/StringBuilder;
    .restart local v20       #str1:Ljava/lang/String;
    .restart local v21       #str2:Ljava/lang/String;
    .restart local v22       #strUrl:Ljava/lang/String;
    .restart local v23       #xtoken:Ljava/lang/String;
    :cond_3
    const/16 v24, 0x0

    goto :goto_1
.end method

.method public requestLogin()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v1, "request login..."

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-static {v0, v1}, Lcom/htc/music/online/sinamusic/InterfaceUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v1, "start add account..."

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    iget-object v5, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    new-instance v6, Lcom/htc/music/online/sinamusic/SSinaEngine$1;

    invoke-direct {v6, p0}, Lcom/htc/music/online/sinamusic/SSinaEngine$1;-><init>(Lcom/htc/music/online/sinamusic/SSinaEngine;)V

    move-object v3, v2

    move-object v4, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 105
    :cond_0
    return-void
.end method

.method public requestLogout()V
    .locals 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    const-string v2, "request Logout..."

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 114
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/music/online/sinamusic/InterfaceUtil;->getGoogleAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 115
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SSinaEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    new-instance v2, Lcom/htc/music/online/sinamusic/SSinaEngine$2;

    invoke-direct {v2, p0}, Lcom/htc/music/online/sinamusic/SSinaEngine$2;-><init>(Lcom/htc/music/online/sinamusic/SSinaEngine;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 136
    :cond_0
    return-void
.end method

.method public searchAlbum(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    .locals 33
    .parameter "orgAlbumName"
    .parameter "orgSingerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "[isOnlineExist] + Begin"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "songlistName:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "singerName:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1446
    new-instance v24, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;

    invoke-direct/range {v24 .. v24}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;-><init>()V

    .line 1447
    .local v24, mWrapperSonglistDetail:Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 1451
    :try_start_0
    new-instance v12, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1452
    .local v12, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v30

    const-string v31, "http.connection.timeout"

    const/16 v32, 0x1770

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-interface/range {v30 .. v32}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1453
    invoke-virtual {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v30

    const-string v31, "http.socket.timeout"

    const/16 v32, 0x1770

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-interface/range {v30 .. v32}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1455
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1456
    .local v22, mStrb:Ljava/lang/StringBuilder;
    const-string v28, "http://music.weibo.com/yueku/cooperate/htc/search.php"

    .line 1457
    .local v28, strUrl:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    const-string v30, "?"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    const-string v30, "type=album"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    const-string v30, "&"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "key="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    const-string v32, "%20"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "HttpRequest:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1466
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1468
    .local v14, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v12, v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 1469
    .local v15, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v30

    const/16 v31, 0xc8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 1471
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v30, Ljava/io/InputStreamReader;

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v30

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1474
    .local v10, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 1475
    .local v23, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    .local v27, str:Ljava/lang/String;
    :goto_0
    if-eqz v27, :cond_0

    .line 1477
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    goto :goto_0

    .line 1480
    :cond_0
    new-instance v18, Lorg/json/JSONObject;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1481
    .local v18, mJSONObject:Lorg/json/JSONObject;
    const-string v30, "retCode"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 1482
    .local v25, retCode:I
    if-nez v25, :cond_6

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Return data Successful"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1486
    const-string v30, "Content"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 1488
    .local v19, mJSONObject2:Lorg/json/JSONObject;
    if-nez v19, :cond_1

    .line 1490
    const/16 v30, -0x4

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 1491
    .local v17, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1553
    .end local v10           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v14           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v17           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v19           #mJSONObject2:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v25           #retCode:I
    .end local v27           #str:Ljava/lang/String;
    .end local v28           #strUrl:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1556
    .local v8, e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 1557
    const/16 v30, -0x4

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v17

    .line 1558
    .restart local v17       #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v17

    .line 1494
    .end local v8           #e:Lorg/json/JSONException;
    .end local v17           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v12       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v14       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v15       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v19       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v22       #mStrb:Ljava/lang/StringBuilder;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v25       #retCode:I
    .restart local v27       #str:Ljava/lang/String;
    .restart local v28       #strUrl:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v30, "total"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 1495
    .local v29, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "total:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1497
    const-string v30, "items"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1498
    .local v3, JsonArray:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v30

    if-lez v30, :cond_5

    .line 1500
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_4

    .line 1502
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 1504
    .local v21, mSongJSONObject:Lorg/json/JSONObject;
    const-string v30, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1505
    .local v4, albumId:I
    const-string v30, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1506
    .local v6, albumName:Ljava/lang/String;
    const-string v30, "albumImage"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1507
    .local v5, albumImage:Ljava/lang/String;
    const-string v30, "singer"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1508
    .local v26, singerName:Ljava/lang/String;
    const-string v30, "detail_url"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1509
    .local v7, detail_url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "-----i----:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "albumId:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "albumname:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "singer:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "albumImage:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "detail_url:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1516
    if-eqz v4, :cond_3

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Find match song"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1519
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistId(I)V

    .line 1520
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistName(Ljava/lang/String;)V

    .line 1523
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistOwnerName(Ljava/lang/String;)V

    .line 1524
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistPhoto(Ljava/lang/String;)V

    .line 1525
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/htc/music/online/sinamusic/WrapperSonglistDetail;->setSonglistDetailUrl(Ljava/lang/String;)V

    .line 1580
    .end local v3           #JsonArray:Lorg/json/JSONArray;
    .end local v4           #albumId:I
    .end local v5           #albumImage:Ljava/lang/String;
    .end local v6           #albumName:Ljava/lang/String;
    .end local v7           #detail_url:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v19           #mJSONObject2:Lorg/json/JSONObject;
    .end local v21           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v25           #retCode:I
    .end local v26           #singerName:Ljava/lang/String;
    .end local v27           #str:Ljava/lang/String;
    .end local v29           #total:I
    :cond_2
    :goto_2
    return-object v24

    .line 1500
    .restart local v3       #JsonArray:Lorg/json/JSONArray;
    .restart local v4       #albumId:I
    .restart local v5       #albumImage:Ljava/lang/String;
    .restart local v6       #albumName:Ljava/lang/String;
    .restart local v7       #detail_url:Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v10       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v19       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v21       #mSongJSONObject:Lorg/json/JSONObject;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v25       #retCode:I
    .restart local v26       #singerName:Ljava/lang/String;
    .restart local v27       #str:Ljava/lang/String;
    .restart local v29       #total:I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1529
    .end local v4           #albumId:I
    .end local v5           #albumImage:Ljava/lang/String;
    .end local v6           #albumName:Ljava/lang/String;
    .end local v7           #detail_url:Ljava/lang/String;
    .end local v21           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v26           #singerName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Cannot find match song"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 1560
    .end local v3           #JsonArray:Lorg/json/JSONArray;
    .end local v9           #i:I
    .end local v10           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v14           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v19           #mJSONObject2:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v25           #retCode:I
    .end local v27           #str:Ljava/lang/String;
    .end local v28           #strUrl:Ljava/lang/String;
    .end local v29           #total:I
    :catch_1
    move-exception v8

    .line 1563
    .local v8, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v8}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1564
    const/16 v30, -0x3

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1565
    .local v11, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11

    .line 1534
    .end local v8           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v11           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v3       #JsonArray:Lorg/json/JSONArray;
    .restart local v10       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v12       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v14       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v15       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v19       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v22       #mStrb:Ljava/lang/StringBuilder;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v25       #retCode:I
    .restart local v27       #str:Ljava/lang/String;
    .restart local v28       #strUrl:Ljava/lang/String;
    .restart local v29       #total:I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Server Return : No match Data"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1535
    const/16 v30, -0x7

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 1536
    .local v13, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1567
    .end local v3           #JsonArray:Lorg/json/JSONArray;
    .end local v10           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v13           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v14           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v19           #mJSONObject2:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v25           #retCode:I
    .end local v27           #str:Ljava/lang/String;
    .end local v28           #strUrl:Ljava/lang/String;
    .end local v29           #total:I
    :catch_2
    move-exception v8

    .line 1570
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 1571
    const/16 v30, -0x3

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v16

    .line 1572
    .local v16, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v16

    .line 1539
    .end local v8           #e:Ljava/io/IOException;
    .end local v16           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v10       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v12       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v14       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v15       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v18       #mJSONObject:Lorg/json/JSONObject;
    .restart local v22       #mStrb:Ljava/lang/StringBuilder;
    .restart local v23       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v25       #retCode:I
    .restart local v27       #str:Ljava/lang/String;
    .restart local v28       #strUrl:Ljava/lang/String;
    :cond_6
    const/16 v30, -0x1

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 1541
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Server Return : parameter error"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1542
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 1543
    .restart local v13       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13

    .line 1545
    .end local v13           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_7
    const/16 v30, -0x2

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v30, v0

    const-string v31, "Server Return : Get Songlist failed"

    invoke-virtual/range {v30 .. v31}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1548
    const/16 v30, -0x5

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v13

    .line 1549
    .restart local v13       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v13
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1577
    .end local v10           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v12           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v13           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v14           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v18           #mJSONObject:Lorg/json/JSONObject;
    .end local v22           #mStrb:Ljava/lang/StringBuilder;
    .end local v23           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v25           #retCode:I
    .end local v27           #str:Ljava/lang/String;
    .end local v28           #strUrl:Ljava/lang/String;
    :cond_8
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v20

    .line 1578
    .local v20, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v20
.end method

.method public searchSong(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    .locals 34
    .parameter "orgSongName"
    .parameter "orgSingerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/online/sinamusic/SnsException;
        }
    .end annotation

    .prologue
    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "[isOnlineExist] + Begin"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "songName:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "singerName:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1292
    new-instance v22, Lcom/htc/music/online/sinamusic/WrapperSongDetail;

    invoke-direct/range {v22 .. v22}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;-><init>()V

    .line 1293
    .local v22, mWrapperSongDetail:Lcom/htc/music/online/sinamusic/WrapperSongDetail;
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 1297
    :try_start_0
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1298
    .local v10, mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    const-string v32, "http.connection.timeout"

    const/16 v33, 0x1770

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1299
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    const-string v32, "http.socket.timeout"

    const/16 v33, 0x1770

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1301
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1302
    .local v20, mStrb:Ljava/lang/StringBuilder;
    const-string v29, "http://music.weibo.com/yueku/cooperate/htc/search.php"

    .line 1303
    .local v29, strUrl:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    const-string v31, "?"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    const-string v31, "type=song"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    const-string v31, "&"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "key="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    const-string v33, "%20"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "HttpRequest:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1312
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1314
    .local v12, mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v10, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 1315
    .local v13, mHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v31

    const/16 v32, 0xc8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 1317
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/InputStreamReader;

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v31

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1320
    .local v8, mBufferedReader:Ljava/io/BufferedReader;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1321
    .local v21, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .local v28, str:Ljava/lang/String;
    :goto_0
    if-eqz v28, :cond_0

    .line 1323
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    goto :goto_0

    .line 1326
    :cond_0
    new-instance v16, Lorg/json/JSONObject;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1327
    .local v16, mJSONObject:Lorg/json/JSONObject;
    const-string v31, "retCode"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 1328
    .local v23, retCode:I
    if-nez v23, :cond_6

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Return data Successful"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1332
    const-string v31, "Content"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 1334
    .local v17, mJSONObject2:Lorg/json/JSONObject;
    if-nez v17, :cond_1

    .line 1336
    const/16 v31, -0x4

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 1337
    .local v15, mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1402
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v12           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v15           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v16           #mJSONObject:Lorg/json/JSONObject;
    .end local v17           #mJSONObject2:Lorg/json/JSONObject;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v28           #str:Ljava/lang/String;
    .end local v29           #strUrl:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1405
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 1406
    const/16 v31, -0x4

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v15

    .line 1407
    .restart local v15       #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v15

    .line 1340
    .end local v6           #e:Lorg/json/JSONException;
    .end local v15           #mJSONException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v16       #mJSONObject:Lorg/json/JSONObject;
    .restart local v17       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v28       #str:Ljava/lang/String;
    .restart local v29       #strUrl:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v31, "total"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 1341
    .local v30, total:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "total:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1343
    const-string v31, "items"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1344
    .local v3, JsonArray:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v31

    if-lez v31, :cond_5

    .line 1346
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v7, v0, :cond_4

    .line 1348
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 1350
    .local v19, mSongJSONObject:Lorg/json/JSONObject;
    const-string v31, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 1351
    .local v25, songId:I
    const-string v31, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1352
    .local v27, songName:Ljava/lang/String;
    const-string v31, "songImage"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1353
    .local v26, songImage:Ljava/lang/String;
    const-string v31, "singer"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1354
    .local v24, singerName:Ljava/lang/String;
    const-string v31, "album"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1355
    .local v4, albumName:Ljava/lang/String;
    const-string v31, "detail_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1356
    .local v5, detail_url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "-----i----:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "songId:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "songname:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "singer:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "songImage:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "albumName:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "detail_url:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->d(Ljava/lang/Object;)V

    .line 1364
    if-eqz v25, :cond_3

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Find match song"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->i(Ljava/lang/Object;)V

    .line 1368
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongId(I)V

    .line 1369
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongName(Ljava/lang/String;)V

    .line 1370
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSingerName(Ljava/lang/String;)V

    .line 1371
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongImage(Ljava/lang/String;)V

    .line 1372
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setAlbumName(Ljava/lang/String;)V

    .line 1373
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/htc/music/online/sinamusic/WrapperSongDetail;->setSongDetailUrl(Ljava/lang/String;)V

    .line 1429
    .end local v3           #JsonArray:Lorg/json/JSONArray;
    .end local v4           #albumName:Ljava/lang/String;
    .end local v5           #detail_url:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v16           #mJSONObject:Lorg/json/JSONObject;
    .end local v17           #mJSONObject2:Lorg/json/JSONObject;
    .end local v19           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v24           #singerName:Ljava/lang/String;
    .end local v25           #songId:I
    .end local v26           #songImage:Ljava/lang/String;
    .end local v27           #songName:Ljava/lang/String;
    .end local v28           #str:Ljava/lang/String;
    .end local v30           #total:I
    :cond_2
    :goto_2
    return-object v22

    .line 1346
    .restart local v3       #JsonArray:Lorg/json/JSONArray;
    .restart local v4       #albumName:Ljava/lang/String;
    .restart local v5       #detail_url:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v16       #mJSONObject:Lorg/json/JSONObject;
    .restart local v17       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v19       #mSongJSONObject:Lorg/json/JSONObject;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v24       #singerName:Ljava/lang/String;
    .restart local v25       #songId:I
    .restart local v26       #songImage:Ljava/lang/String;
    .restart local v27       #songName:Ljava/lang/String;
    .restart local v28       #str:Ljava/lang/String;
    .restart local v30       #total:I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1378
    .end local v4           #albumName:Ljava/lang/String;
    .end local v5           #detail_url:Ljava/lang/String;
    .end local v19           #mSongJSONObject:Lorg/json/JSONObject;
    .end local v24           #singerName:Ljava/lang/String;
    .end local v25           #songId:I
    .end local v26           #songImage:Ljava/lang/String;
    .end local v27           #songName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Cannot find match song"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 1409
    .end local v3           #JsonArray:Lorg/json/JSONArray;
    .end local v7           #i:I
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v12           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v16           #mJSONObject:Lorg/json/JSONObject;
    .end local v17           #mJSONObject2:Lorg/json/JSONObject;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v28           #str:Ljava/lang/String;
    .end local v29           #strUrl:Ljava/lang/String;
    .end local v30           #total:I
    :catch_1
    move-exception v6

    .line 1412
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 1413
    const/16 v31, -0x3

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v9

    .line 1414
    .local v9, mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v9

    .line 1383
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v9           #mClientProtocolException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v3       #JsonArray:Lorg/json/JSONArray;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v16       #mJSONObject:Lorg/json/JSONObject;
    .restart local v17       #mJSONObject2:Lorg/json/JSONObject;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v28       #str:Ljava/lang/String;
    .restart local v29       #strUrl:Ljava/lang/String;
    .restart local v30       #total:I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : No match Data"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1384
    const/16 v31, -0x7

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1385
    .local v11, mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1416
    .end local v3           #JsonArray:Lorg/json/JSONArray;
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v12           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v16           #mJSONObject:Lorg/json/JSONObject;
    .end local v17           #mJSONObject2:Lorg/json/JSONObject;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v28           #str:Ljava/lang/String;
    .end local v29           #strUrl:Ljava/lang/String;
    .end local v30           #total:I
    :catch_2
    move-exception v6

    .line 1419
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1420
    const/16 v31, -0x3

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v14

    .line 1421
    .local v14, mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v14

    .line 1388
    .end local v6           #e:Ljava/io/IOException;
    .end local v14           #mIOException:Lcom/htc/music/online/sinamusic/SnsException;
    .restart local v8       #mBufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #mHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v16       #mJSONObject:Lorg/json/JSONObject;
    .restart local v20       #mStrb:Ljava/lang/StringBuilder;
    .restart local v21       #mStringBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #retCode:I
    .restart local v28       #str:Ljava/lang/String;
    .restart local v29       #strUrl:Ljava/lang/String;
    :cond_6
    const/16 v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 1390
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : parameter error"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1391
    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1392
    .restart local v11       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11

    .line 1394
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    :cond_7
    const/16 v31, -0x2

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/online/sinamusic/SSinaEngine;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    move-object/from16 v31, v0

    const-string v32, "Server Return : Get Songlist failed"

    invoke-virtual/range {v31 .. v32}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    .line 1397
    const/16 v31, -0x5

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v11

    .line 1398
    .restart local v11       #mException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v11
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1426
    .end local v8           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v10           #mDefaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #mException:Lcom/htc/music/online/sinamusic/SnsException;
    .end local v12           #mHttpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #mHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v16           #mJSONObject:Lorg/json/JSONObject;
    .end local v20           #mStrb:Ljava/lang/StringBuilder;
    .end local v21           #mStringBuilder:Ljava/lang/StringBuilder;
    .end local v23           #retCode:I
    .end local v28           #str:Ljava/lang/String;
    .end local v29           #strUrl:Ljava/lang/String;
    :cond_8
    const/16 v31, -0x1

    invoke-static/range {v31 .. v31}, Lcom/htc/music/online/sinamusic/SinaFactory;->getSnsException(I)Lcom/htc/music/online/sinamusic/SnsException;

    move-result-object v18

    .line 1427
    .local v18, mParameterException:Lcom/htc/music/online/sinamusic/SnsException;
    throw v18
.end method
