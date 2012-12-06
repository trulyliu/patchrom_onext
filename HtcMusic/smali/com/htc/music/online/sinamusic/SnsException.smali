.class public Lcom/htc/music/online/sinamusic/SnsException;
.super Ljava/lang/Exception;
.source "SnsException.java"


# instance fields
.field private childErrorCode:I

.field private logger:Lcom/htc/music/online/sinamusic/MyLogger;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 11
    invoke-static {}, Lcom/htc/music/online/sinamusic/MyLogger;->kLog()Lcom/htc/music/online/sinamusic/MyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/online/sinamusic/SnsException;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/online/sinamusic/SnsException;->childErrorCode:I

    .line 16
    invoke-direct {p0, p1}, Lcom/htc/music/online/sinamusic/SnsException;->setChildErrorCode(I)V

    .line 17
    return-void
.end method

.method private setChildErrorCode(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 63
    iput p1, p0, Lcom/htc/music/online/sinamusic/SnsException;->childErrorCode:I

    .line 64
    return-void
.end method


# virtual methods
.method public getChildErrorCode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/htc/music/online/sinamusic/SnsException;->childErrorCode:I

    return v0
.end method

.method public printErrorInfo()V
    .locals 4

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/music/online/sinamusic/SnsException;->getChildErrorCode()I

    move-result v0

    .line 34
    .local v0, errorcode:I
    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SnsException;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",PARAMETER_ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SnsException;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",INVALID_TOKEN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SnsException;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",HTTP_ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :pswitch_3
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SnsException;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",INVALID_JSON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :pswitch_4
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SnsException;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",OP_SEVER_FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 52
    :pswitch_5
    iget-object v1, p0, Lcom/htc/music/online/sinamusic/SnsException;->logger:Lcom/htc/music/online/sinamusic/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",SOCIALNETWORKERROR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/online/sinamusic/MyLogger;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
