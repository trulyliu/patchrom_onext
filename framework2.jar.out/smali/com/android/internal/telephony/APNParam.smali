.class public Lcom/android/internal/telephony/APNParam;
.super Ljava/lang/Object;
.source "APNParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/APNParam$ClassId;,
        Lcom/android/internal/telephony/APNParam$RatType;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "APNParam"

.field static classIdMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/APNParam$ClassId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static pdnLabelMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/APNParam$ClassId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public active:Z

.field public apn_types:[Ljava/lang/String;

.field public authType:I

.field public class_id:I

.field public dns_pri:Ljava/lang/String;

.field public dns_sec:Ljava/lang/String;

.field public http_proxy_addr:Ljava/lang/String;

.field public http_proxy_port:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public pdn_label:Ljava/lang/String;

.field public rat:I

.field public state:I

.field public timer:I

.field public type:I

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    sput-object v4, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    .line 132
    sput-object v4, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    .line 171
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 175
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    .line 176
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    .line 177
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "ota"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "pam"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "ota"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "internet"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_TETHERING:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "pam"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 186
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "1"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "2"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "3"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "4"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_APP:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "5"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_APP:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 239
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "APNParam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create Mapping failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sput-object v4, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    .line 241
    sput-object v4, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 199
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x75

    if-ne v1, v2, :cond_3

    .line 201
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "3"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "4"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_APP:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_APP:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 207
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 209
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "ims"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet_kddi"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "admin"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "dun1_kddi"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "dun2_kddi"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "ims"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "internet_kddi"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_ADMIN:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "admin"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE1:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "dun1_kddi"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_CUSTOMIZE2:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "dun2_kddi"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 222
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CKT_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 223
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet_ckt"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "internet_ckt"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 228
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->MPCS_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "internet_mpcs"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v1, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    const-string v2, "ims_mpcs"

    sget-object v3, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_INTERNET:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "internet_mpcs"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v1, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_IMS:Lcom/android/internal/telephony/APNParam$ClassId;

    const-string v3, "ims_mpcs"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean v2, p0, Lcom/android/internal/telephony/APNParam;->active:Z

    .line 248
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->id:I

    .line 249
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 250
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 251
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->type:I

    .line 252
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->state:I

    .line 253
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->timer:I

    .line 254
    iput v2, p0, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 255
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    .line 256
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    .line 257
    iput v1, p0, Lcom/android/internal/telephony/APNParam;->authType:I

    .line 258
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->dns_pri:Ljava/lang/String;

    .line 259
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->dns_sec:Ljava/lang/String;

    .line 260
    iput-boolean v2, p0, Lcom/android/internal/telephony/APNParam;->active:Z

    .line 261
    iput-object v0, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    .line 262
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;III)V
    .locals 2
    .parameter "n_id"
    .parameter "n_class"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/APNParam;->active:Z

    .line 398
    const-string v0, "APNParam"

    const-string v1, "[FIXME] Dummy APNParam ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .parameter "n_id"
    .parameter "n_pdn_label"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/internal/telephony/APNParam;-><init>()V

    .line 296
    iput p1, p0, Lcom/android/internal/telephony/APNParam;->id:I

    .line 297
    iput-object p2, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 298
    iput-object p3, p0, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    .line 299
    iput p4, p0, Lcom/android/internal/telephony/APNParam;->type:I

    .line 300
    iput p5, p0, Lcom/android/internal/telephony/APNParam;->state:I

    .line 301
    iput p6, p0, Lcom/android/internal/telephony/APNParam;->timer:I

    .line 302
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "n_id"
    .parameter "n_pdn_label"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"
    .parameter "n_rat"
    .parameter "n_user"
    .parameter "n_pass"
    .parameter "n_auth_type"

    .prologue
    .line 286
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    .line 287
    iput p7, p0, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 288
    iput-object p8, p0, Lcom/android/internal/telephony/APNParam;->user:Ljava/lang/String;

    .line 289
    iput-object p9, p0, Lcom/android/internal/telephony/APNParam;->password:Ljava/lang/String;

    .line 290
    iput p10, p0, Lcom/android/internal/telephony/APNParam;->authType:I

    .line 291
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "n_id"
    .parameter "n_pdn_label"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"
    .parameter "n_rat"
    .parameter "n_user"
    .parameter "n_pass"
    .parameter "n_auth_type"
    .parameter "n_dns_pri"
    .parameter "n_dns_sec"

    .prologue
    .line 279
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/telephony/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 280
    iput-object p11, p0, Lcom/android/internal/telephony/APNParam;->dns_pri:Ljava/lang/String;

    .line 281
    iput-object p12, p0, Lcom/android/internal/telephony/APNParam;->dns_sec:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "n_id"
    .parameter "n_pdn_label"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"
    .parameter "n_rat"
    .parameter "n_user"
    .parameter "n_pass"
    .parameter "n_auth_type"
    .parameter "n_dns_pri"
    .parameter "n_dns_sec"
    .parameter "n_apn_type"

    .prologue
    .line 273
    invoke-direct/range {p0 .. p12}, Lcom/android/internal/telephony/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    iput-object p13, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    .line 275
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "n_id"
    .parameter "n_pdn_label"
    .parameter "n_name"
    .parameter "n_type"
    .parameter "n_state"
    .parameter "n_timer"
    .parameter "n_rat"
    .parameter "n_user"
    .parameter "n_pass"
    .parameter "n_auth_type"
    .parameter "n_dns_pri"
    .parameter "n_dns_sec"
    .parameter "n_apn_type"
    .parameter "n_http_proxy_addr"
    .parameter "n_http_proxy_port"

    .prologue
    .line 266
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/telephony/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 267
    iput-object p14, p0, Lcom/android/internal/telephony/APNParam;->http_proxy_addr:Ljava/lang/String;

    .line 268
    iput-object p15, p0, Lcom/android/internal/telephony/APNParam;->http_proxy_port:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "pdn_label"
    .parameter "rat"

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/internal/telephony/APNParam;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    .line 309
    iput p2, p0, Lcom/android/internal/telephony/APNParam;->rat:I

    .line 310
    return-void
.end method

.method public static ClassIdToPdnLabel(Lcom/android/internal/telephony/APNParam$ClassId;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 339
    sget-object v0, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 341
    const-string v2, "APNParam"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassIdToPdnLabel: classIdMapping="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ClassId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 349
    :goto_1
    return-object v0

    .line 341
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 344
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 346
    const-string v0, "APNParam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassIdToPdnLabel: cannot find mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 347
    goto :goto_1

    .line 349
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/APNParam;->classIdMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 6
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 403
    iget-object v5, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v4

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 408
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "default"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "hipri"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 412
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 407
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getClassId()Lcom/android/internal/telephony/APNParam$ClassId;
    .locals 3

    .prologue
    .line 319
    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 321
    :cond_0
    const-string v1, "APNParam"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClassId: pdnLabelMapping="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pdn_label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/APNParam$ClassId;

    .line 329
    :goto_1
    return-object v0

    .line 321
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 324
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 326
    const-string v0, "APNParam"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClassId: cannot find mapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v0, Lcom/android/internal/telephony/APNParam$ClassId;->CLASS_NONE:Lcom/android/internal/telephony/APNParam$ClassId;

    goto :goto_1

    .line 329
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/APNParam;->pdnLabelMapping:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/APNParam$ClassId;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget v2, p0, Lcom/android/internal/telephony/APNParam;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    const-string v2, ", Pdn_label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v2, ", Apn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v2, ", Protocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget v2, p0, Lcom/android/internal/telephony/APNParam;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    const-string v2, ", State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget v2, p0, Lcom/android/internal/telephony/APNParam;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    const-string v2, ", Timer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget v2, p0, Lcom/android/internal/telephony/APNParam;->timer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    const-string v2, ", RadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget v2, p0, Lcom/android/internal/telephony/APNParam;->rat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    const-string v2, ", AuthType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget v2, p0, Lcom/android/internal/telephony/APNParam;->authType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    const-string v2, ", Apntype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->apn_types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 383
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_1
    const-string v2, ", HttpProxyAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->http_proxy_addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v2, ", HttpProxyPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v2, p0, Lcom/android/internal/telephony/APNParam;->http_proxy_port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
