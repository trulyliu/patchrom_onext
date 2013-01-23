.class public Lcom/android/internal/telephony/gsm/SIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SIMRecords$1;,
        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field private static final ACTION_OTA_COMPLETE_REBOOT:Ljava/lang/String; = "com.htc.phone.OTA_COMPLETE_REBOOT"

.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field protected static final CSIM_EVENT_BASE:I = 0x64

.field protected static final DBG:Z = true

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x6a

.field private static final EVENT_DELAY_CFU_QUERY:I = 0x6c

.field protected static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CB_CHANNEL_DONE:I = 0x23

.field private static final EVENT_GET_CDMA_MSISDN_DONE:I = 0x76

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_CSP_DONE:I = 0x25

.field private static final EVENT_GET_EFLP_DONE:I = 0x68

.field private static final EVENT_GET_EF_MSISDN_DONE:I = 0x73

.field private static final EVENT_GET_FPLMN_DONE:I = 0x6b

.field private static final EVENT_GET_GID1_DONE:I = 0x71

.field private static final EVENT_GET_HPLMNwAcT_DONE:I = 0x74

.field private static final EVENT_GET_HTC_SIM_TYPES:I = 0x26

.field protected static final EVENT_GET_ICCID_DONE:I = 0x4

.field protected static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field protected static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_O2_PERSO_DONE:I = 0x72

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SIM_TYPES_DONE:I = 0x65

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_SUBSIDY_LOCK_DONE:I = 0x66

.field private static final EVENT_GET_UIMID_DONE:I = 0x27

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_HTC_EXTENDED_OFFSET:I = 0x64

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_MDMRST_SIM_HOT_SWAP_STATUS:I = 0x77

.field private static final EVENT_PBK_READY:I = 0x6d

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RETRY_MSISDN_QUERY:I = 0x6e

.field private static final EVENT_SET_CB_CHANNEL_DONE:I = 0x24

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_EFLP_DONE:I = 0x69

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SET_SUBSIDY_LOCK_DONE:I = 0x67

.field private static final EVENT_SIM_HOT_SWAP_STATUS:I = 0x75

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SIM_SWAP_STATUS:I = 0x70

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final H3G_NETWORKLIST:Ljava/util/ArrayList; = null

.field private static final HPLMNwACT_RECORD_SIZE:I = 0x5

.field protected static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String; = null

.field private static final O2_UK_MCCMNC:Ljava/lang/String; = "23410"

.field private static final ORANGE_NETWORKLIST:Ljava/util/ArrayList; = null

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final UST_SST_RECORD_SIZE:I = 0xb

.field private static mIsOptusCid:Z

.field private static sPatternAircel:Ljava/util/regex/Pattern;

.field private static sPatternTataDoCoMo:Ljava/util/regex/Pattern;

.field private static sPatternVideocon:Ljava/util/regex/Pattern;


# instance fields
.field private approval:Z

.field private callForwardingEnabled:Z

.field cfuQueryCompleted:Z

.field dataCallForwardingEnabled:Z

.field disableCfuIcon:Z

.field efCPHS_MWI:[B

.field efMWIS:[B

.field private imsi:Ljava/lang/String;

.field public mCFUNumber:Ljava/lang/String;

.field public mCdmaRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field public mDataCFUNumber:Ljava/lang/String;

.field mEFO2Perso:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfCsp:[B

.field mFPLMNList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGID1:Ljava/lang/String;

.field private mIsMFG:Z

.field private mIsNEL:Z

.field private mMSISDNRetry:I

.field mMsisdnRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkSelectionEnabled:Z

.field mOperatorNameSource:I

.field private mSimSmsRecordIndexes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

.field private mValidSPN:Z

.field mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

.field private mloadCompleted:Z

.field private mloadEFCount:I

.field pnnHomeName:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field private spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 220
    const-string v0, "^4050[2-4]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternTataDoCoMo:Ljava/util/regex/Pattern;

    .line 222
    const-string v0, "^4058[0-1]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternAircel:Ljava/util/regex/Pattern;

    .line 224
    const-string v0, "^4058[2-4]|^40593"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternVideocon:Ljava/util/regex/Pattern;

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "23433"

    aput-object v2, v1, v4

    const-string v2, "20801"

    aput-object v2, v1, v5

    const-string v2, "21403"

    aput-object v2, v1, v6

    const-string v2, "22803"

    aput-object v2, v1, v7

    const-string v2, "26003"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "26803"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ORANGE_NETWORKLIST:Ljava/util/ArrayList;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "23420"

    aput-object v2, v1, v4

    const-string v2, "27205"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->H3G_NETWORKLIST:Ljava/util/ArrayList;

    .line 406
    const/16 v0, 0x7a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "405025"

    aput-object v1, v0, v4

    const-string v1, "405026"

    aput-object v1, v0, v5

    const-string v1, "405027"

    aput-object v1, v0, v6

    const-string v1, "405028"

    aput-object v1, v0, v7

    const-string v1, "405029"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "405030"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405031"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405032"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405033"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405034"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405035"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405036"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405037"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405038"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405039"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405040"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405041"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405042"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405043"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405044"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405045"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405046"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405047"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405750"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405751"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405752"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405753"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405754"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405755"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405756"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405799"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405800"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405801"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405802"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405803"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405804"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405805"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405806"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405807"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405808"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405809"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405810"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405811"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405812"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405813"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "405814"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "405815"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "405816"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "405817"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "405818"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "405819"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "405820"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "405821"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "405822"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "405823"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "405824"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "405825"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "405826"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "405827"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "405828"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "405829"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "405830"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "405831"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "405832"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "405833"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "405834"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "405835"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "405836"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "405837"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "405838"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "405839"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "405841"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "405842"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "405843"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "405844"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "405845"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "405846"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "405847"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "405848"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "405849"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "405850"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "405851"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "405852"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "405853"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405875"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "405876"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "405877"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "405878"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "405879"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "405880"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "405881"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "405882"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "405883"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "405884"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "405885"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "405886"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "405908"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "405909"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "405910"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "405911"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "405912"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405913"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405914"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405915"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405916"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405917"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "405918"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "405919"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "405920"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "405921"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "405922"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "405923"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "405924"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "405930"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "405931"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "405932"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "card"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 428
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 161
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 162
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 164
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 165
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 166
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 167
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 170
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    .line 178
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCsp:[B

    .line 179
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mNetworkSelectionEnabled:Z

    .line 187
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorNameSource:I

    .line 206
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 208
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 213
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    .line 345
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCdmaRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    .line 358
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    .line 429
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRecords_init(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 431
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccFileHandler;Z)V
    .locals 3
    .parameter "card"
    .parameter "c"
    .parameter "ci"
    .parameter "icchandler"
    .parameter "usedByIccCardProxy"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4151
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 161
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 162
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 164
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 165
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 166
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 167
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 170
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    .line 178
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCsp:[B

    .line 179
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mNetworkSelectionEnabled:Z

    .line 187
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorNameSource:I

    .line 206
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 208
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 213
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    .line 345
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCdmaRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    .line 358
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    .line 4152
    iput-boolean p5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsControlledByIccCardProxy:Z

    .line 4153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRecords_init(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 4154
    return-void
.end method

.method private SIMRecords_init(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .parameter "card"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 436
    new-instance v1, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 439
    new-instance v1, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 440
    new-instance v1, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 442
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 445
    iput v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 448
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x75

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 449
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x77

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 452
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 454
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x15

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1f

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 458
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6d

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerPBReadyNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 462
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x70

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMSWAPStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 466
    const-string v1, "gsm.sim.types"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 475
    const-string v1, "ro.cid"

    const-string v2, "11111111"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, cid:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 477
    const-string v1, "T-MOB101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HTC__102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 479
    :cond_0
    const-string v1, "26201"

    invoke-static {p2, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 489
    :cond_1
    :goto_0
    const-string v1, "OPTUS001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsOptusCid:Z

    .line 494
    :cond_2
    const-string v1, "factory2"

    const-string v2, "ro.bootmode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsMFG:Z

    .line 499
    const-string v1, "1"

    const-string v2, "persist.radio.nel"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsNEL:Z

    .line 503
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsRecordsLoad:Z

    .line 507
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    .line 509
    return-void

    .line 480
    :cond_3
    const-string v1, "VODAP102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 482
    const-string v1, "26202"

    invoke-static {p2, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_4
    const-string v1, "O2___102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    const-string v1, "26207"

    invoke-static {p2, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkMNCLength(ILjava/lang/String;)I
    .locals 11
    .parameter "mnclen"
    .parameter "localimsi"

    .prologue
    const/4 v10, 0x6

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 4081
    if-eq p0, v9, :cond_0

    if-eqz p0, :cond_0

    const/4 v7, 0x2

    if-ne p0, v7, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_2

    .line 4083
    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 4084
    .local v6, mccmncCode:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 4085
    .local v5, mccmnc:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4086
    const/4 p0, 0x3

    .line 4092
    .end local v5           #mccmnc:Ljava/lang/String;
    :cond_1
    sget-boolean v7, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsOptusCid:Z

    if-eqz v7, :cond_2

    const-string v7, "505029"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4094
    const/4 p0, 0x3

    .line 4099
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #mccmncCode:Ljava/lang/String;
    :cond_2
    if-eqz p0, :cond_3

    if-ne p0, v9, :cond_5

    .line 4100
    :cond_3
    if-eqz p1, :cond_a

    .line 4102
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4105
    .local v4, mcc:I
    sget-object v7, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternTataDoCoMo:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternAircel:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/android/internal/telephony/gsm/SIMRecords;->sPatternVideocon:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4108
    :cond_4
    const/4 p0, 0x3

    .line 4129
    .end local v4           #mcc:I
    :cond_5
    :goto_1
    return p0

    .line 4084
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #mccmnc:Ljava/lang/String;
    .restart local v6       #mccmncCode:Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4109
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #mccmnc:Ljava/lang/String;
    .end local v6           #mccmncCode:Ljava/lang/String;
    .restart local v4       #mcc:I
    :cond_7
    const-string v7, "72234"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4111
    const/4 p0, 0x2

    goto :goto_1

    .line 4112
    :cond_8
    sget-boolean v7, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsOptusCid:Z

    if-eqz v7, :cond_9

    const-string v7, "505029"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4114
    const/4 p0, 0x3

    goto :goto_1

    .line 4116
    :cond_9
    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    goto :goto_1

    .line 4119
    .end local v4           #mcc:I
    :catch_0
    move-exception v1

    .line 4120
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 p0, 0x0

    .line 4121
    const-string v7, "GSM"

    const-string v8, "SIMRecords: Corrupt IMSI!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4125
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_a
    const/4 p0, 0x0

    .line 4126
    const-string v7, "GSM"

    const-string v8, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private dropSimPbkEntries()V
    .locals 2

    .prologue
    .line 3930
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries(Ljava/lang/String;I)V

    .line 3931
    return-void
.end method

.method private dropSimPbkEntries(Ljava/lang/String;I)V
    .locals 4
    .parameter "notifyAction"
    .parameter "extra"

    .prologue
    .line 3944
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 3946
    .local v2, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_1

    .line 3947
    const-string v3, "dropSimPbkEntries"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3948
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntries()V

    .line 3950
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.SIM_REFRESH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3953
    .local v1, notifyIntent:Landroid/content/Intent;
    :goto_0
    if-lez p2, :cond_0

    .line 3954
    const-string v3, "extra"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3956
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3964
    .end local v1           #notifyIntent:Landroid/content/Intent;
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_1
    return-void

    .line 3950
    .restart local v2       #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3959
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 3961
    :catch_1
    move-exception v0

    .line 3962
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private fetchMWIfromUE()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3086
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3088
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "mwi_status_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 3090
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 3091
    return-void
.end method

.method private getSavedNetworkSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3834
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3835
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "network_selection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 7
    .parameter "start"
    .parameter "ar"

    .prologue
    const/16 v6, 0x51

    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3617
    if-eqz p1, :cond_2

    .line 3618
    if-eqz p1, :cond_2

    .line 3621
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-ne v1, v2, :cond_1

    .line 3627
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3731
    :goto_0
    return-void

    .line 3630
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3635
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3729
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 3637
    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 3640
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f46

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3643
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3645
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 3648
    :pswitch_1
    if-eqz p2, :cond_4

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 3649
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3650
    .local v0, data:[B
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 3651
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v4, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 3653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spnDisplayCondition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3656
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v6, :cond_3

    .line 3657
    const-string v1, "gsm.sim.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3661
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 3665
    .end local v0           #data:[B
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f14

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3668
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3670
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3674
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto/16 :goto_0

    .line 3678
    :pswitch_2
    if-eqz p2, :cond_6

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    .line 3680
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    .line 3683
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3684
    .restart local v0       #data:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 3687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3689
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v6, :cond_5

    .line 3690
    const-string v1, "gsm.sim.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3694
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 3698
    .end local v0           #data:[B
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f18

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3701
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3703
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 3707
    :pswitch_3
    if-eqz p2, :cond_8

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    .line 3709
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    .line 3712
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3713
    .restart local v0       #data:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 3716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3718
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v6, :cond_7

    .line 3719
    const-string v1, "gsm.sim.operator.alpha"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3726
    .end local v0           #data:[B
    :cond_7
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 3723
    :cond_8
    const-string v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3635
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 9
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 3877
    array-length v7, p1

    div-int/lit8 v4, v7, 0x2

    .line 3879
    .local v4, usedCspGroups:I
    const/16 v5, -0x40

    .line 3881
    .local v5, valueAddedServicesGroup:B
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3882
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_5

    .line 3883
    mul-int/lit8 v7, v1, 0x2

    aget-byte v7, p1, v7

    if-ne v7, v5, :cond_4

    .line 3884
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3885
    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_1

    .line 3889
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3920
    :cond_0
    :goto_1
    return-void

    .line 3891
    :cond_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3894
    const-string v7, "[CSP] Set Automatic Network Selection"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3901
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->queryManualselectionStatus()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3902
    .local v0, flag:Z
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    .line 3905
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v2

    .line 3907
    .local v2, networkSelection:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 3908
    .local v3, phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3909
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->clearNetworkSelection()V

    .line 3910
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    goto :goto_1

    .end local v0           #flag:Z
    .end local v2           #networkSelection:Ljava/lang/String;
    .end local v3           #phone:Lcom/android/internal/telephony/PhoneBase;
    :cond_3
    move v0, v6

    .line 3901
    goto :goto_2

    .line 3882
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3919
    :cond_5
    const-string v6, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleFileUpdate(I)V
    .locals 8
    .parameter "efid"

    .prologue
    const/16 v7, 0x6f4a

    const/16 v6, 0x6f40

    const/16 v5, 0x6f3a

    const/16 v3, 0x73

    const/4 v4, 0x1

    .line 2788
    sparse-switch p1, :sswitch_data_0

    .line 2866
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-eqz v1, :cond_0

    .line 2867
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2874
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isSIMPhonebookFileId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USIM Phonebook file id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2876
    const-string v1, "com.htc.intent.action.SIM_FILE_UPDATE"

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries(Ljava/lang/String;I)V

    .line 2883
    :cond_1
    :goto_0
    return-void

    .line 2791
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fc5

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2792
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_0

    .line 2796
    :sswitch_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2799
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 2804
    :sswitch_2
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2807
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v7, v4, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 2812
    :sswitch_3
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2813
    const-string v1, "GSM"

    const-string v2, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f15

    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 2825
    :sswitch_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2828
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    .line 2829
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2832
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f4e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2838
    :cond_3
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v6, v7, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2843
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getSubscriberNumber(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2852
    :sswitch_5
    const-string v1, "com.htc.intent.action.SIM_FILE_UPDATE"

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries(Ljava/lang/String;I)V

    .line 2854
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-eqz v1, :cond_1

    .line 2855
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto/16 :goto_0

    .line 2878
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto/16 :goto_0

    .line 2788
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f15 -> :sswitch_3
        0x6f17 -> :sswitch_2
        0x6f3a -> :sswitch_5
        0x6f40 -> :sswitch_4
        0x6fc5 -> :sswitch_0
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSimChanged()V
    .locals 6

    .prologue
    .line 3061
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3063
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "sim_imsi_key"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3064
    .local v1, lastIMSI:Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 3066
    .local v3, spEditor:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 3067
    .local v0, imsiForSp:Ljava/lang/String;
    :goto_0
    const-string v4, "sim_imsi_key"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3068
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3070
    const-string v4, "mwi_status_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3072
    const-string v4, "SIM change"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3073
    const-string v4, "gsm.sim.change"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    :goto_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3081
    return-void

    .line 3066
    .end local v0           #imsiForSp:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 3076
    .restart local v0       #imsiForSp:Ljava/lang/String;
    :cond_1
    const-string v4, "SIM not change"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3077
    const-string v4, "gsm.sim.change"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V
    .locals 4
    .parameter "refreshResponse"

    .prologue
    .line 2886
    if-nez p1, :cond_1

    .line 2887
    const-string v1, "handleSimRefresh without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2947
    :cond_0
    :goto_0
    return-void

    .line 2897
    :cond_1
    iget v1, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    sparse-switch v1, :sswitch_data_0

    .line 2944
    const-string v1, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2899
    :sswitch_0
    const-string v1, "handleSimRefresh with SIM_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2900
    iget v1, p1, Lcom/android/internal/telephony/IccRefreshResponse;->efId:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 2906
    :sswitch_1
    const-string v1, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2911
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-eqz v1, :cond_2

    .line 2912
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2915
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 2916
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries()V

    goto :goto_0

    .line 2919
    :sswitch_2
    const-string v1, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2920
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2930
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-eqz v1, :cond_3

    .line 2931
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2936
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    .line 2937
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.phone.OTA_COMPLETE_REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2938
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2897
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSms(I[B)V
    .locals 8
    .parameter "nRecordIndex"
    .parameter "ba"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2960
    aget-byte v3, p2, v6

    if-eqz v3, :cond_0

    .line 2961
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_0
    aget-byte v3, p2, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2966
    array-length v1, p2

    .line 2970
    .local v1, n:I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 2971
    .local v2, pdu:[B
    add-int/lit8 v3, v1, -0x1

    invoke-static {p2, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2972
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 2976
    .local v0, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->setIndexOnIcc(I)V

    .line 2979
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v3

    if-ne v7, v3, :cond_2

    .line 2980
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2988
    .end local v0           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    :goto_0
    return-void

    .line 2983
    .restart local v0       #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .restart local v1       #n:I
    .restart local v2       #pdu:[B
    :cond_2
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t dispatch class 2 SMS because phone type is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .parameter "messages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3016
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3018
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 3019
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 3021
    .local v0, ba:[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 3022
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 3028
    array-length v4, v0

    .line 3032
    .local v4, n:I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 3033
    .local v5, pdu:[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3034
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v3

    .line 3037
    .local v3, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v6

    if-ne v10, v6, :cond_1

    .line 3038
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 3045
    :cond_1
    aput-byte v10, v0, v9

    .line 3018
    .end local v3           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v4           #n:I
    .end local v5           #pdu:[B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3056
    .end local v0           #ba:[B
    :cond_3
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3812
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 3813
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isFfBeTreatedAsUnknownCount()Z
    .locals 2

    .prologue
    .line 3819
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "VIRGI001"

    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTC__001"

    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3822
    :cond_0
    const/4 v0, 0x1

    .line 3823
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 6
    .parameter "plmn"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3558
    if-nez p1, :cond_1

    .line 3582
    :cond_0
    :goto_0
    return v3

    .line 3561
    :cond_1
    sget-boolean v5, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsOptusCid:Z

    if-eqz v5, :cond_2

    .line 3562
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3563
    .local v1, opNumeric:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "505029"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "50502"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 3566
    goto :goto_0

    .line 3571
    .end local v1           #opNumeric:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 3572
    goto :goto_0

    .line 3575
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 3576
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3577
    .local v2, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 3578
    goto :goto_0
.end method

.method private parseEfFplmn([B)V
    .locals 4
    .parameter "data"

    .prologue
    .line 3792
    if-eqz p1, :cond_0

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_0

    .line 3793
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 3795
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 3796
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3798
    .local v1, plmn:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3799
    add-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_FPLMN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3801
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3795
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 3804
    .end local v0           #i:I
    .end local v1           #plmn:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 9
    .parameter "data"

    .prologue
    const/16 v8, 0x80

    const/4 v7, 0x0

    .line 3740
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, p1

    invoke-direct {v4, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 3742
    .local v4, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v3, 0x0

    .line 3744
    .local v3, plmnEntries:[B
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3754
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-direct {v1, v5, v7, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 3755
    .local v1, nestedTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3756
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 3757
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    .line 3770
    .end local v1           #nestedTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    :goto_1
    if-nez v3, :cond_4

    .line 3787
    :cond_1
    return-void

    .line 3762
    .restart local v1       #nestedTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 3763
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    .line 3764
    goto :goto_1

    .line 3744
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 3774
    .end local v1           #nestedTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v3

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 3776
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    add-int/lit8 v5, v0, 0x2

    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 3779
    const/4 v5, 0x3

    invoke-static {v3, v0, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 3782
    .local v2, plmnCode:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    .line 3783
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SPDI network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3784
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3776
    :cond_5
    add-int/lit8 v0, v0, 0x3

    goto :goto_2
.end method

.method private resetAttRequestVariables()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4136
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4137
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 4138
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 4140
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 4141
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateMsisdnInfo()V

    .line 4144
    :cond_0
    return-void
.end method

.method private setLocaleFromMccIfNeeded(I)V
    .locals 3
    .parameter "mcc"

    .prologue
    .line 1329
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 1330
    .local v1, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 1332
    .local v0, country:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    return-void
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "carrier"

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3204
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 3206
    :cond_0
    return-void
.end method

.method private setTimezoneFromMccIfNeeded(I)V
    .locals 5
    .parameter "mcc"

    .prologue
    .line 1311
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1312
    .local v1, timezone:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1313
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 1315
    .local v2, zoneId:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1317
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1319
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 1322
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #zoneId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 7
    .parameter "spn"

    .prologue
    const/4 v6, 0x1

    .line 3212
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    if-nez v4, :cond_1

    .line 3213
    const-string v4, "GSM"

    const-string v5, "setVoiceMailByCountry() mVmConfig is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    :cond_0
    :goto_0
    return-void

    .line 3219
    :cond_1
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xd1

    if-ne v4, v5, :cond_2

    .line 3220
    const-string v4, "44020"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3221
    const-string v4, "1416"

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNumSBM_home:Ljava/lang/String;

    .line 3222
    const-string v4, "+819066514170"

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNumSBM_roam:Ljava/lang/String;

    .line 3223
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    goto :goto_0

    .line 3237
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v6, v4, :cond_0

    .line 3238
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3239
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 3240
    .local v2, phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkImsiChangedForVoiceMail()Z

    move-result v0

    .line 3241
    .local v0, changed:Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPreferenceVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 3242
    .local v1, number:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 3243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3244
    const-string v4, "voiceMailNum is empty!! try to search default value from property/xml!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3245
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3246
    .local v3, vmNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3247
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 3248
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 3249
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3250
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 3251
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 3252
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 3255
    .end local v3           #vmNumber:Ljava/lang/String;
    :cond_4
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    goto/16 :goto_0

    .line 3258
    :cond_5
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private updateMWItoUE()V
    .locals 4

    .prologue
    .line 3094
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3096
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3097
    .local v1, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "mwi_status_key"

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3098
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3099
    return-void
.end method

.method private updateMsisdnInfo()V
    .locals 5

    .prologue
    .line 4159
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 4161
    .local v1, msisdnTemp:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 4162
    .local v0, commands:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "UNIAT"

    aput-object v3, v0, v2

    .line 4163
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "at@msisdn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 4164
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 4168
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetGSM_MSISDN(Ljava/lang/String;)V

    .line 4174
    const-string v2, "msisdn = xxxxxxxxxx"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 4176
    return-void

    .line 4159
    .end local v0           #commands:[Ljava/lang/String;
    .end local v1           #msisdnTemp:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public checkcallForwardingStatus()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3994
    const/4 v0, 0x0

    .line 3996
    .local v0, cphspreferred:Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3997
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 3998
    .local v2, ss:Landroid/telephony/ServiceState;
    if-eqz v2, :cond_0

    .line 3999
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 4001
    .local v1, operator:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 4002
    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->ORANGE_NETWORKLIST:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4003
    const/4 v0, 0x1

    .line 4009
    .end local v1           #operator:Ljava/lang/String;
    .end local v2           #ss:Landroid/telephony/ServiceState;
    :cond_0
    if-ne v0, v4, :cond_8

    .line 4010
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v3, :cond_4

    .line 4011
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    aget-byte v3, v3, v5

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v6, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 4039
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 4040
    return-void

    .line 3999
    .restart local v2       #ss:Landroid/telephony/ServiceState;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v2           #ss:Landroid/telephony/ServiceState;
    :cond_3
    move v3, v5

    .line 4011
    goto :goto_1

    .line 4013
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v3, :cond_7

    .line 4015
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 4016
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4017
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    move v5, v4

    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    goto :goto_2

    :cond_6
    move v3, v5

    .line 4015
    goto :goto_3

    .line 4020
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->queryCFUIfNecessary()V

    goto :goto_2

    .line 4024
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v3, :cond_b

    .line 4026
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 4027
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4028
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_9

    move v5, v4

    :cond_9
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    goto :goto_2

    :cond_a
    move v3, v5

    .line 4026
    goto :goto_4

    .line 4031
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v3, :cond_d

    .line 4032
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    aget-byte v3, v3, v5

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v6, :cond_c

    move v5, v4

    :cond_c
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    goto :goto_2

    .line 4034
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->queryCFUIfNecessary()V

    goto :goto_2
.end method

.method disableCallForwardingIcon()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1193
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    if-ne v0, v1, :cond_1

    .line 1194
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->disableCfuIcon:Z

    .line 1195
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1197
    :cond_1
    return-void
.end method

.method protected dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .parameter "message"

    .prologue
    .line 2955
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2956
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing SIMRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterPBReadyNotify(Landroid/os/Handler;)V

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 528
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 529
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 530
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 534
    invoke-super {p0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 535
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 9

    .prologue
    const/16 v8, 0x73

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 3291
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsRecordsLoad:Z

    .line 3294
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 3297
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    .line 3300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchSimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3305
    const-string v1, "ro.kernel.qemu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3306
    const-string v1, "mSimulator = false"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3307
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    .line 3312
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f38

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3313
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3316
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f62

    const/16 v3, 0x74

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3317
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3322
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3324
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v1, :cond_7

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_7

    .line 3325
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    .line 3336
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3338
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x2fe2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3339
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3341
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3342
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->getHtcSimTypes(Landroid/os/Message;)V

    .line 3343
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3357
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3360
    :cond_3
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v1, :cond_9

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_9

    .line 3361
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x76

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 3381
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3391
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f7b

    const/16 v3, 0x6b

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3392
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3396
    iput v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    .line 3397
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 3398
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 3403
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v1

    if-ne v5, v1, :cond_4

    .line 3404
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fc9

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3405
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3409
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fad

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3410
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3413
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v1

    if-ne v5, v1, :cond_5

    .line 3415
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fca

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3416
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3423
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f11

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3426
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3430
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fcb

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3431
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3432
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f13

    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3433
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3436
    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 3438
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fcd

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3439
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3443
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6fc5

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3444
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3448
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v1

    if-ne v5, v1, :cond_6

    .line 3449
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f16

    const/16 v3, 0x1a

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3450
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3452
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f15

    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3453
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3463
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f45

    const/16 v3, 0x23

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3464
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3481
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchSimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3482
    return-void

    .line 3328
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3333
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3364
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    .line 3365
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_a

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3368
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4e

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 3374
    :cond_a
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 3385
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getSubscriberNumber(Landroid/os/Message;)V

    goto/16 :goto_2
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 538
    const-string v0, "finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public getDataCallForwardingStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 942
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 944
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 947
    :goto_1
    return v1

    .end local v0           #enabled:Z
    :cond_0
    move v0, v1

    .line 942
    goto :goto_0

    .line 947
    .restart local v0       #enabled:Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    goto :goto_1
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 6
    .parameter "plmn"

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x2

    .line 3501
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    .line 3502
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    .line 3505
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mValidSPN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3507
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    if-nez v3, :cond_2

    .line 3551
    :cond_1
    :goto_0
    return v2

    .line 3513
    :cond_2
    const/4 v1, 0x0

    .line 3514
    .local v1, isH3GSIM:Z
    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords;->H3G_NETWORKLIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3515
    const/4 v1, 0x1

    .line 3520
    :cond_3
    const/4 v0, 0x0

    .line 3521
    .local v0, CheckingEONS:Z
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v3, v2, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x31

    if-eq v3, v4, :cond_5

    if-nez v1, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x71

    if-ne v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v3, v5, :cond_5

    :cond_4
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd0

    if-ne v3, v4, :cond_6

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v3, v5, :cond_6

    .line 3530
    :cond_5
    const/4 v0, 0x1

    .line 3534
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    if-eqz v0, :cond_8

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorNameSource:I

    if-nez v3, :cond_8

    .line 3537
    :cond_7
    const/4 v2, 0x2

    .local v2, rule:I
    goto :goto_0

    .line 3538
    .end local v2           #rule:I
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3539
    const/4 v2, 0x1

    .line 3540
    .restart local v2       #rule:I
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 3542
    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 3545
    .end local v2           #rule:I
    :cond_9
    const/4 v2, 0x2

    .line 3546
    .restart local v2       #rule:I
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 3548
    or-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getGID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4044
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getO2SIMCardType()I
    .locals 5

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4065
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v4, "23410"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v2

    .line 4070
    :cond_1
    :goto_0
    return v0

    .line 4067
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    if-eqz v3, :cond_3

    .line 4068
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    .line 4070
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getFdnEnabledStatus()Z

    move-result v2

    if-eq v2, v1, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1280
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1281
    const-string v2, "getOperatorNumeric: IMSI == null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1302
    :goto_0
    return-object v1

    .line 1284
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-nez v2, :cond_2

    .line 1285
    :cond_1
    const-string v2, "getSIMOperatorNumeric: bad mncLength"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1289
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v1, :cond_3

    .line 1292
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1300
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1302
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 2
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 3970
    const/16 v1, 0x66

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3971
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    .line 3973
    return-void
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    return-object v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 917
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 919
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 920
    const-string v2, "getVoiceCallForwardingFlag return false due to airplanemode"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 923
    :cond_0
    :goto_1
    return v1

    .end local v0           #enabled:Z
    :cond_1
    move v0, v1

    .line 917
    goto :goto_0

    .line 923
    .restart local v0       #enabled:Z
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    goto :goto_1
.end method

.method public getVoiceCallForwardingStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 932
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 934
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 937
    :goto_1
    return v1

    .end local v0           #enabled:Z
    :cond_0
    move v0, v1

    .line 932
    goto :goto_0

    .line 937
    .restart local v0       #enabled:Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    goto :goto_1
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 806
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    const v3, 0x1040004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, aplhaTag:Ljava/lang/String;
    const-string v2, "ro.cid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, cid:Ljava/lang/String;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x71

    if-ne v2, v3, :cond_1

    const-string v2, "ORANG202"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 819
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 822
    .end local v0           #aplhaTag:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 819
    .restart local v0       #aplhaTag:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 709
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd1

    if-ne v2, v3, :cond_1

    .line 710
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, operator:Ljava/lang/String;
    const-string v2, "44020"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 713
    .local v1, phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 714
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBM Roaming VM number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNumSBM_roam:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 716
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNumSBM_roam:Ljava/lang/String;

    .line 724
    .end local v0           #operator:Ljava/lang/String;
    .end local v1           #phone:Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    return-object v2

    .line 718
    .restart local v0       #operator:Ljava/lang/String;
    .restart local v1       #phone:Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBM Home VM number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNumSBM_home:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 719
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNumSBM_home:Ljava/lang/String;

    goto :goto_0

    .line 724
    .end local v0           #operator:Ljava/lang/String;
    .end local v1           #phone:Lcom/android/internal/telephony/PhoneBase;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 55
    .parameter "msg"

    .prologue
    .line 1344
    const/16 v26, 0x0

    .line 1349
    .local v26, isRecordLoadResponse:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mDestroyed:Z

    if-eqz v2, :cond_1

    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " while being destroyed. Ignoring."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    .line 2785
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v2, :sswitch_data_0

    .line 2781
    :cond_2
    :goto_1
    if-eqz v26, :cond_0

    .line 2782
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 1359
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1360
    .local v11, ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v27, v0

    .line 1361
    .local v27, isSIMRemoved:[I
    move-object/from16 v0, v27

    array-length v2, v0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    aget v2, v27, v2

    if-nez v2, :cond_2

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->resetCallForwardingFlag()V

    .line 1364
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 1367
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->resetAttRequestVariables()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2776
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v27           #isSIMRemoved:[I
    :catch_0
    move-exception v17

    .line 2778
    .local v17, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "Exception parsing SIM record"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2781
    if-eqz v26, :cond_0

    goto :goto_2

    .line 1375
    .end local v17           #exc:Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 1380
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2781
    :catchall_0
    move-exception v2

    if-eqz v26, :cond_4

    .line 2782
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 2781
    :cond_4
    throw v2

    .line 1385
    :cond_5
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->disableCallForwardingIcon()V

    goto :goto_1

    .line 1392
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1393
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    .line 1394
    const-string v2, "automatic network selection: failed!"

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1396
    :cond_6
    const-string v2, "automatic network selection: succeeded!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1403
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    const/16 v26, 0x1

    .line 1406
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    .line 1409
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1412
    .restart local v11       #ar:Landroid/os/AsyncResult;
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1413
    .local v39, prop:Ljava/lang/String;
    const-string v2, "READY"

    move-object/from16 v0, v39

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1414
    const-string v2, "Querying IMSI done, but SIM state is not ready."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1419
    :cond_7
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 1420
    const-string v2, "Exception querying IMSI, Exception:"

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1424
    :cond_8
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_9

    .line 1425
    const-string v2, "querying IMSI,  ar.result == null."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1428
    :cond_9
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v2, :cond_12

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xe0

    if-ne v2, v4, :cond_12

    .line 1429
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCdmaRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    .line 1430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCdmaRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 1440
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    if-le v2, v4, :cond_b

    .line 1441
    :cond_a
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid IMSI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 1446
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->htcIsAllHexDigits(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1447
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid IMSI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 1450
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1452
    const-string v2, "IMSI: xxxxxxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1458
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetGSM_IMSI(Ljava/lang/String;)V

    .line 1464
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v2, :cond_f

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setTestIcc(Ljava/lang/String;Z)V

    .line 1469
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMNCLength(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1472
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_13

    .line 1474
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_10

    .line 1476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 1481
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v4, "IMSI"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1487
    .local v33, mcc:I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setTimezoneFromMccIfNeeded(I)V

    .line 1488
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setLocaleFromMccIfNeeded(I)V

    .line 1491
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimChanged()V

    .line 1494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 1495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->calcuateIccExpiredInformation()V

    .line 1497
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v2, :cond_11

    .line 1500
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v20

    .line 1502
    .local v20, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23410"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v20, :cond_11

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f02

    const/16 v5, 0x72

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1504
    const/16 v26, 0x0

    .line 1522
    .end local v20           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v33           #mcc:I
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const-string v4, "45207"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1524
    const-string v2, "ignore EF_SPN per request, EF_IMSI"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1525
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    goto/16 :goto_1

    .line 1433
    :cond_12
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    goto/16 :goto_3

    .line 1512
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v38

    .line 1513
    .local v38, phone:Lcom/android/internal/telephony/PhoneBase;
    move-object/from16 v0, v38

    instance-of v2, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v2, :cond_14

    check-cast v38, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v38           #phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v4, :cond_14

    .line 1514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v4, "IMSI"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimChanged()V

    goto :goto_4

    .line 1533
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v39           #prop:Ljava/lang/String;
    :sswitch_4
    const/16 v26, 0x1

    .line 1535
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1536
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 1538
    .local v14, data:[B
    const/16 v28, 0x0

    .line 1539
    .local v28, isValidMbdn:Z
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_15

    .line 1541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_MBI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1545
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    .line 1551
    const/16 v28, 0x1

    .line 1562
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1565
    if-eqz v28, :cond_17

    .line 1568
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    if-lez v2, :cond_16

    .line 1571
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1575
    :cond_16
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    .line 1578
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1587
    :cond_17
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1601
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .end local v28           #isValidMbdn:Z
    :sswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1602
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1603
    const/16 v26, 0x1

    .line 1605
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1607
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_19

    .line 1609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or missing EF"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_18

    const-string v2, "[MAILBOX]"

    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1615
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 1619
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    .line 1622
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1625
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1609
    :cond_18
    const-string v2, "[MBDN]"

    goto :goto_5

    .line 1633
    :cond_19
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1635
    .local v3, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_1a

    const-string v2, " EF[MAILBOX]"

    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1b

    .line 1642
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1643
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1648
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1651
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1635
    :cond_1a
    const-string v2, " EF[MBDN]"

    goto :goto_6

    .line 1659
    :cond_1b
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1660
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 1665
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    const-string v2, "EVENT_GET_MSISDN_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1670
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1672
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1d

    .line 1673
    const-string v2, "Invalid or missing EF[MSISDN]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1675
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMSISDNRetry:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMSISDNRetry:I

    .line 1677
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMSISDNRetry:I

    const/16 v4, 0xc

    if-gt v2, v4, :cond_1c

    .line 1679
    const-string v2, "retry to get MSISDN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1680
    const/16 v2, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->removeMessages(I)V

    .line 1681
    const/16 v2, 0x6e

    const-wide/16 v4, 0x4e20

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1684
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1685
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1686
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateMsisdnInfo()V

    goto/16 :goto_1

    .line 1694
    :cond_1d
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1f

    .line 1697
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMSISDNRetry:I

    .line 1700
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 1702
    .local v40, results:[Ljava/lang/String;
    if-eqz v40, :cond_20

    move-object/from16 v0, v40

    array-length v2, v0

    const/4 v4, 0x5

    if-lt v2, v4, :cond_20

    .line 1703
    const/4 v2, 0x0

    aget-object v2, v40, v2

    if-eqz v2, :cond_1e

    .line 1704
    const/4 v2, 0x0

    aget-object v2, v40, v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v35

    .line 1705
    .local v35, name:[B
    const/4 v2, 0x0

    move-object/from16 v0, v35

    array-length v4, v0

    move-object/from16 v0, v35

    invoke-static {v0, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1708
    .end local v35           #name:[B
    :cond_1e
    const/4 v2, 0x1

    aget-object v2, v40, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 1712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    const/16 v2, 0x91

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aget-object v4, v40, v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1713
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    .line 1714
    .local v48, tempNum:Ljava/lang/StringBuilder;
    const-string v2, "+"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1728
    .end local v40           #results:[Ljava/lang/String;
    .end local v48           #tempNum:Ljava/lang/StringBuilder;
    :cond_1f
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateMsisdnInfo()V

    .line 1739
    const-string v2, "MSISDN: xxxxxxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1722
    .restart local v40       #results:[Ljava/lang/String;
    :cond_20
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1723
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    goto :goto_7

    .line 1744
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v40           #results:[Ljava/lang/String;
    :sswitch_7
    const-string v2, "EVENT_GET_EF_MSISDN_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1745
    const/16 v26, 0x1

    .line 1746
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1749
    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1750
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1753
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_21

    .line 1754
    const-string v2, "Invalid or missing EF[MSISDN]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1756
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateMsisdnInfo()V

    goto/16 :goto_1

    .line 1764
    :cond_21
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    .line 1766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1767
    const/4 v10, 0x0

    .line 1769
    .local v10, adn_msisdn:Lcom/android/internal/telephony/AdnRecord;
    const/16 v19, 0x0

    .local v19, i:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v41

    .local v41, s:I
    :goto_8
    move/from16 v0, v19

    move/from16 v1, v41

    if-ge v0, v1, :cond_22

    .line 1770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #adn_msisdn:Lcom/android/internal/telephony/AdnRecord;
    check-cast v10, Lcom/android/internal/telephony/AdnRecord;

    .line 1772
    .restart local v10       #adn_msisdn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v10}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1773
    invoke-virtual {v10}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1774
    invoke-virtual {v10}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1781
    .end local v10           #adn_msisdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v19           #i:I
    .end local v41           #s:I
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateMsisdnInfo()V

    .line 1784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msisdnTag = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1769
    .restart local v10       #adn_msisdn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v19       #i:I
    .restart local v41       #s:I
    :cond_23
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 1793
    .end local v10           #adn_msisdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v19           #i:I
    .end local v41           #s:I
    :sswitch_8
    const/16 v26, 0x0

    .line 1794
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1796
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_24

    .line 1797
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1799
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1804
    :cond_24
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTagTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1810
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTemp:Ljava/lang/String;

    .line 1811
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTagTemp:Ljava/lang/String;

    .line 1815
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateMsisdnInfo()V

    goto/16 :goto_1

    .line 1823
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    const/16 v26, 0x1

    .line 1824
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1826
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_25

    .line 1827
    const-string v2, "exception for EVENT_GET_CDMA_MSISDN_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1828
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1829
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1831
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateMsisdnInfo()V

    goto/16 :goto_1

    .line 1835
    :cond_25
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1836
    .local v30, localTemp:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1839
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateMsisdnInfo()V

    goto/16 :goto_1

    .line 1844
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v30           #localTemp:[Ljava/lang/String;
    :sswitch_a
    const/16 v26, 0x1

    .line 1846
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1847
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 1849
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_MWIS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1856
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 1858
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xff

    if-ne v2, v4, :cond_26

    .line 1859
    const-string v2, "SIMRecords: Uninitialized record MWIS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1864
    :cond_26
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_28

    const/16 v52, 0x1

    .line 1865
    .local v52, voiceMailWaiting:Z
    :goto_9
    const/4 v2, 0x1

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1874
    if-eqz v52, :cond_27

    .line 1875
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1876
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    const/16 v4, 0xff

    if-ne v2, v4, :cond_27

    .line 1877
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1886
    :cond_27
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1864
    .end local v52           #voiceMailWaiting:Z
    :cond_28
    const/16 v52, 0x0

    goto :goto_9

    .line 1880
    .restart local v52       #voiceMailWaiting:Z
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v2, :cond_27

    .line 1881
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    goto :goto_a

    .line 1890
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .end local v52           #voiceMailWaiting:Z
    :sswitch_b
    const/16 v26, 0x1

    .line 1892
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1893
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 1895
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1899
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 1905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v2, :cond_2a

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x71

    if-ne v2, v4, :cond_2

    .line 1908
    :cond_2a
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    and-int/lit8 v23, v2, 0xf

    .line 1911
    .local v23, indicator:I
    const/16 v2, 0xa

    move/from16 v0, v23

    if-ne v0, v2, :cond_2c

    .line 1913
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1918
    :cond_2b
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1914
    :cond_2c
    const/4 v2, 0x5

    move/from16 v0, v23

    if-ne v0, v2, :cond_2b

    .line 1915
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    goto :goto_b

    .line 1923
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .end local v23           #indicator:I
    :sswitch_c
    const/16 v26, 0x1

    .line 1925
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1926
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 1928
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1932
    const/4 v2, 0x0

    array-length v4, v14

    invoke-static {v14, v2, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 1934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1939
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    :sswitch_d
    const/16 v26, 0x1

    .line 1940
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1941
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 1942
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2d

    .line 1943
    const-string v2, "SIMRecords: query UIM ID fail!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1946
    :cond_2d
    if-eqz v14, :cond_2

    array-length v2, v14

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 1947
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    new-array v15, v2, [B

    .line 1948
    .local v15, dst:[B
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v14, v5

    invoke-static {v14, v2, v15, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1949
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 1951
    .local v16, dsttemp:[B
    const/4 v2, 0x0

    aget-byte v53, v14, v2

    .local v53, xx:I
    const/16 v54, 0x0

    .local v54, yy:I
    :goto_c
    if-lez v53, :cond_2e

    .line 1952
    add-int/lit8 v2, v53, -0x1

    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v54

    invoke-static {v15, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1951
    add-int/lit8 v53, v53, -0x1

    add-int/lit8 v54, v54, 0x1

    goto :goto_c

    .line 1953
    :cond_2e
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v50

    .line 1954
    .local v50, uimId:Ljava/lang/String;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v50

    .line 1955
    const-string v2, "gsm.cdma.uim.id"

    move-object/from16 v0, v50

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uim id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 1963
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .end local v15           #dst:[B
    .end local v16           #dsttemp:[B
    .end local v50           #uimId:Ljava/lang/String;
    .end local v53           #xx:I
    .end local v54           #yy:I
    :sswitch_e
    const/16 v26, 0x1

    .line 1965
    :try_start_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    .line 1968
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1969
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 1971
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_30

    .line 2051
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMNCLength(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 2053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_2f

    .line 2059
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_2f

    .line 2060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 2066
    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v2, :cond_2

    .line 2071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setTestIcc(Ljava/lang/String;Z)V

    .line 2077
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v20

    .line 2079
    .restart local v20       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23410"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v20, :cond_2

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f02

    const/16 v5, 0x72

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2081
    :goto_d
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 1975
    .end local v20           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_30
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_AD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1978
    array-length v2, v14

    const/4 v4, 0x3

    if-ge v2, v4, :cond_32

    .line 1979
    const-string v2, "SIMRecords: Corrupt AD data on SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2051
    :try_start_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMNCLength(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 2053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_31

    .line 2059
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_31

    .line 2060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 2066
    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v2, :cond_2

    .line 2071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setTestIcc(Ljava/lang/String;Z)V

    .line 2077
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v20

    .line 2079
    .restart local v20       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23410"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v20, :cond_2

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f02

    const/16 v5, 0x72

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_d

    .line 1984
    .end local v20           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_32
    const/4 v2, 0x0

    :try_start_9
    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_34

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    .line 1987
    array-length v2, v14

    const/4 v4, 0x3

    if-ne v2, v4, :cond_35

    .line 1988
    const-string v2, "SIMRecords: MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2051
    :try_start_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMNCLength(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 2053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_33

    .line 2059
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_33

    .line 2060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 2066
    :cond_33
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v2, :cond_2

    .line 2071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setTestIcc(Ljava/lang/String;Z)V

    .line 2077
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v20

    .line 2079
    .restart local v20       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23410"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v20, :cond_2

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f02

    const/16 v5, 0x72

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_d

    .line 1984
    .end local v20           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_34
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 1992
    :cond_35
    const/4 v2, 0x3

    :try_start_b
    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1994
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_36

    .line 1995
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2051
    :cond_36
    :try_start_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMNCLength(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 2053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_37

    .line 2059
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_37

    .line 2060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 2066
    :cond_37
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v2, :cond_2

    .line 2071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setTestIcc(Ljava/lang/String;Z)V

    .line 2077
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v20

    .line 2079
    .restart local v20       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23410"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v20, :cond_2

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f02

    const/16 v5, 0x72

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_d

    .line 2051
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .end local v20           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkMNCLength(ILjava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 2053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_38

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v4, :cond_38

    .line 2059
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v5

    if-ne v4, v5, :cond_38

    .line 2060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 2066
    :cond_38
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadEFCount:I

    if-nez v4, :cond_39

    .line 2071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->approval:Z

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setTestIcc(Ljava/lang/String;Z)V

    .line 2077
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v20

    .line 2079
    .restart local v20       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string v5, "23410"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    if-eqz v20, :cond_39

    .line 2080
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v5, 0x6f02

    const/16 v6, 0x72

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2081
    const/16 v26, 0x0

    .line 2051
    .end local v20           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_39
    throw v2

    .line 2090
    :sswitch_f
    const/16 v26, 0x1

    .line 2091
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2092
    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 2096
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_10
    const/16 v26, 0x1

    .line 2098
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2099
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 2101
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2106
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cfuQueryCompleted:Z

    .line 2109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFF_CPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2111
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    goto/16 :goto_1

    .line 2116
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    :sswitch_11
    const/16 v26, 0x1

    .line 2118
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2119
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 2121
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2125
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .line 2130
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    :sswitch_12
    const/16 v26, 0x1

    .line 2132
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2133
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 2135
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2138
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfFplmn([B)V

    goto/16 :goto_1

    .line 2143
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2144
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 2145
    const-string v2, "GSM"

    const-string v4, "SIMRecords update failed"

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2150
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_14
    const/16 v26, 0x1

    .line 2152
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2153
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 2155
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2159
    new-instance v49, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v2, 0x0

    array-length v4, v14

    move-object/from16 v0, v49

    invoke-direct {v0, v14, v2, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2161
    .local v49, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_f
    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2162
    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    const/16 v4, 0x43

    if-ne v2, v4, :cond_3a

    .line 2163
    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 2161
    :cond_3a
    invoke-virtual/range {v49 .. v49}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_f

    .line 2172
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .end local v49           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :sswitch_15
    const/16 v26, 0x1

    .line 2174
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2175
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2178
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2182
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_16
    const-string v2, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "marked read: sms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2187
    :sswitch_17
    const/16 v26, 0x0

    .line 2189
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2191
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v22, v0

    .line 2193
    .local v22, index:[I
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3b

    move-object/from16 v0, v22

    array-length v2, v0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3c

    .line 2194
    :cond_3b
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2199
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    aget v5, v22, v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READ EF_SMS RECORD index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v22, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f3c

    const/4 v5, 0x0

    aget v5, v22, v5

    const/16 v6, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2212
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v22           #index:[I
    :sswitch_18
    const/16 v26, 0x0

    .line 2213
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2214
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3e

    .line 2216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_3d

    .line 2217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 2219
    :cond_3d
    const/4 v4, -0x1

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 2222
    :cond_3e
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2228
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_19
    const/16 v26, 0x1

    .line 2230
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2231
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 2233
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3f

    .line 2234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SIMRecords] Error on EF_CBMI with exp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2238
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CBMI length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v14

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CBMI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2240
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2241
    .local v13, channelslList:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v47, v0

    .line 2244
    .local v47, temp:[B
    if-eqz v14, :cond_2

    .line 2245
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_10
    array-length v2, v14

    move/from16 v0, v19

    if-ge v0, v2, :cond_44

    .line 2247
    aget-byte v2, v14, v19

    const/4 v4, -0x1

    if-ne v2, v4, :cond_40

    add-int/lit8 v2, v19, 0x1

    aget-byte v2, v14, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_44

    .line 2249
    :cond_40
    const/4 v2, 0x0

    aget-byte v4, v14, v19

    aput-byte v4, v47, v2

    .line 2250
    const/4 v2, 0x1

    add-int/lit8 v4, v19, 0x1

    aget-byte v4, v14, v4

    aput-byte v4, v47, v2

    .line 2254
    const/4 v2, 0x0

    aget-byte v2, v47, v2

    if-gez v2, :cond_42

    .line 2255
    const/4 v2, 0x0

    aget-byte v2, v47, v2

    add-int/lit16 v2, v2, 0x100

    shl-int/lit8 v9, v2, 0x8

    .line 2259
    .local v9, a:I
    :goto_11
    const/4 v2, 0x1

    aget-byte v2, v47, v2

    if-gez v2, :cond_43

    .line 2260
    const/4 v2, 0x1

    aget-byte v2, v47, v2

    add-int/lit16 v12, v2, 0x100

    .line 2264
    .local v12, b:I
    :goto_12
    add-int v21, v9, v12

    .line 2265
    .local v21, id:I
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    array-length v2, v14

    add-int/lit8 v2, v2, -0x2

    move/from16 v0, v19

    if-eq v0, v2, :cond_41

    add-int/lit8 v2, v19, 0x2

    aget-byte v2, v14, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_41

    add-int/lit8 v2, v19, 0x3

    aget-byte v2, v14, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_41

    .line 2267
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    :cond_41
    add-int/lit8 v19, v19, 0x2

    goto :goto_10

    .line 2258
    .end local v9           #a:I
    .end local v12           #b:I
    .end local v21           #id:I
    :cond_42
    const/4 v2, 0x0

    aget-byte v2, v47, v2

    shl-int/lit8 v9, v2, 0x8

    .restart local v9       #a:I
    goto :goto_11

    .line 2262
    :cond_43
    const/4 v2, 0x1

    aget-byte v12, v47, v2

    .restart local v12       #b:I
    goto :goto_12

    .line 2271
    .end local v9           #a:I
    .end local v12           #b:I
    :cond_44
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 2272
    .local v34, mid:Ljava/lang/String;
    const-string v2, "gsm.sim.cbmi.channel"

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    const-string v2, "gsm.cb.max.channel"

    array-length v4, v14

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CBMI length (string): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v14

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2294
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #channelslList:Ljava/lang/StringBuilder;
    .end local v14           #data:[B
    .end local v19           #i:I
    .end local v34           #mid:Ljava/lang/String;
    .end local v47           #temp:[B
    :sswitch_1a
    const-string v2, "*********Set EF CDMI done"

    const-string v4, "completed!! "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    const/16 v26, 0x0

    .line 2296
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2298
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 2299
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2301
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2308
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_1b
    const-string v2, "*********Set EF LP done"

    const-string v4, "completed!! "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    const/16 v26, 0x0

    .line 2310
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2312
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 2313
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2315
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2319
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_1c
    const/16 v26, 0x1

    .line 2321
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2322
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 2324
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_45

    .line 2325
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on EF_LP with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2329
    :cond_45
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 2330
    .local v32, mLpList:Ljava/lang/StringBuilder;
    const/16 v31, 0x0

    .line 2332
    .local v31, lp:Ljava/lang/String;
    if-eqz v14, :cond_49

    .line 2334
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_13
    array-length v2, v14

    move/from16 v0, v19

    if-ge v0, v2, :cond_48

    .line 2336
    aget-byte v2, v14, v19

    const/4 v4, -0x1

    if-eq v2, v4, :cond_48

    .line 2337
    aget-byte v2, v14, v19

    if-gez v2, :cond_47

    .line 2338
    aget-byte v2, v14, v19

    add-int/lit16 v0, v2, 0x100

    move/from16 v51, v0

    .line 2341
    .local v51, value:I
    :goto_14
    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2342
    array-length v2, v14

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_46

    add-int/lit8 v2, v19, 0x1

    aget-byte v2, v14, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_46

    .line 2343
    const-string v2, ","

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2334
    :cond_46
    add-int/lit8 v19, v19, 0x1

    goto :goto_13

    .line 2340
    .end local v51           #value:I
    :cond_47
    aget-byte v51, v14, v19

    .restart local v51       #value:I
    goto :goto_14

    .line 2347
    .end local v51           #value:I
    :cond_48
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 2349
    .end local v19           #i:I
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_LP length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v14

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_LP: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_LP(string): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2352
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x39

    if-eq v2, v4, :cond_4a

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 2355
    :cond_4a
    const-string v2, "gsm.cb.lp"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v45

    .line 2358
    .local v45, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v45 .. v45}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    .line 2359
    .local v46, spEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz v31, :cond_4c

    .line 2361
    const-string v2, ","

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    .line 2362
    .local v36, num:I
    const/4 v2, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 2363
    .local v29, langnum:I
    const/16 v2, 0xf

    move/from16 v0, v29

    if-le v0, v2, :cond_4b

    .line 2364
    const-string v2, "lang_list"

    const-string v4, "15"

    move-object/from16 v0, v46

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2369
    .end local v29           #langnum:I
    .end local v36           #num:I
    :goto_15
    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 2366
    .restart local v29       #langnum:I
    .restart local v36       #num:I
    :cond_4b
    const-string v2, "lang_list"

    const/4 v4, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    .line 2368
    .end local v29           #langnum:I
    .end local v36           #num:I
    :cond_4c
    const-string v2, "lang_list"

    const-string v4, "15"

    move-object/from16 v0, v46

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    .line 2374
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .end local v31           #lp:Ljava/lang/String;
    .end local v32           #mLpList:Ljava/lang/StringBuilder;
    .end local v45           #sp:Landroid/content/SharedPreferences;
    .end local v46           #spEditor:Landroid/content/SharedPreferences$Editor;
    :sswitch_1d
    const/16 v26, 0x1

    .line 2376
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2377
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 2379
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4d

    .line 2381
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    goto/16 :goto_1

    .line 2388
    :cond_4d
    if-eqz v14, :cond_59

    array-length v2, v14

    if-lez v2, :cond_59

    .line 2389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_SST: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2392
    array-length v2, v14

    const/16 v4, 0xb

    if-lt v2, v4, :cond_4e

    .line 2393
    const/16 v2, 0xa

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_50

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEPSMMI:Z

    .line 2400
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v20

    .line 2402
    .restart local v20       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v20, :cond_4f

    .line 2403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_54

    .line 2405
    new-instance v2, Lcom/android/internal/telephony/gsm/UsimServiceTable;

    invoke-direct {v2, v14}, Lcom/android/internal/telephony/gsm/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    .line 2407
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_51

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsFdnEnabled:Z

    .line 2408
    array-length v2, v14

    const/4 v4, 0x3

    if-lt v2, v4, :cond_53

    .line 2410
    const/4 v2, 0x2

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_52

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    .line 2412
    const/4 v2, 0x2

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4f

    .line 2413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f3e

    const/16 v5, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2446
    .end local v20           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_4f
    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const-string v4, "45207"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2448
    const-string v2, "ignore EF_SPN per request, EF_SST"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2449
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    goto/16 :goto_1

    .line 2393
    :cond_50
    const/4 v2, 0x0

    goto/16 :goto_16

    .line 2407
    .restart local v20       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_51
    const/4 v2, 0x0

    goto :goto_17

    .line 2410
    :cond_52
    const/4 v2, 0x0

    goto :goto_18

    .line 2418
    :cond_53
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    goto :goto_19

    .line 2422
    :cond_54
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0x30

    const/16 v4, 0x30

    if-ne v2, v4, :cond_56

    const/4 v2, 0x1

    :goto_1a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsFdnEnabled:Z

    .line 2423
    array-length v2, v14

    const/4 v4, 0x4

    if-lt v2, v4, :cond_55

    .line 2424
    const/4 v2, 0x3

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0x30

    const/16 v4, 0x30

    if-ne v2, v4, :cond_55

    .line 2425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f3e

    const/16 v5, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2426
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2431
    :cond_55
    array-length v2, v14

    const/4 v4, 0x5

    if-lt v2, v4, :cond_58

    .line 2432
    const/4 v2, 0x4

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0x3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_57

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    goto :goto_19

    .line 2422
    :cond_56
    const/4 v2, 0x0

    goto :goto_1a

    .line 2432
    :cond_57
    const/4 v2, 0x0

    goto :goto_1b

    .line 2434
    :cond_58
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    goto :goto_19

    .line 2441
    .end local v20           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_59
    const-string v2, "Empty EF_SST"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 2456
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    :sswitch_1e
    const/16 v26, 0x1

    .line 2458
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2460
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2464
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 2466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iCPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2470
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_1f
    const/16 v26, 0x0

    .line 2471
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2473
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5a

    .line 2474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2478
    :cond_5a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 2479
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/Message;

    .line 2489
    .local v37, onCphsCompleted:Landroid/os/Message;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5b

    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_5b

    .line 2490
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2492
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2494
    const-string v2, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2496
    const/16 v37, 0x0

    .line 2501
    :cond_5b
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2507
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v37           #onCphsCompleted:Landroid/os/Message;
    :cond_5c
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 2508
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2510
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2515
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_20
    const/16 v26, 0x0

    .line 2516
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2517
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5d

    .line 2518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2524
    :goto_1c
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 2525
    const-string v2, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2526
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2528
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2521
    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CPHS MailBox with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1c

    .line 2532
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_21
    const/16 v26, 0x0

    .line 2533
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2534
    .restart local v11       #ar:Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim REFRESH with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2535
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2536
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V

    goto/16 :goto_1

    .line 2540
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_22
    const/16 v26, 0x1

    .line 2542
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2543
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 2545
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2550
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cfuQueryCompleted:Z

    .line 2553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFIS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2556
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    goto/16 :goto_1

    .line 2560
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    :sswitch_23
    const/16 v26, 0x1

    .line 2562
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2564
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5e

    .line 2565
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in fetching EF_CSP data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2569
    :cond_5e
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 2571
    .restart local v14       #data:[B
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CSP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_1

    .line 2577
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    :sswitch_24
    const-string v2, "Delay CFU Query..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2579
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 2580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v38

    .line 2581
    .restart local v38       #phone:Lcom/android/internal/telephony/PhoneBase;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 2584
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2585
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->getDataCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2596
    .end local v38           #phone:Lcom/android/internal/telephony/PhoneBase;
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2597
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2600
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 2601
    .local v44, simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    const-string v2, "gsm.sim.types"

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2607
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v44           #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :sswitch_26
    const-string v2, "EVENT_GET_HTC_SIM_TYPES"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2608
    const/16 v26, 0x1

    .line 2609
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2610
    .restart local v11       #ar:Landroid/os/AsyncResult;
    if-eqz v11, :cond_5f

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_60

    .line 2612
    :cond_5f
    const-string v2, "GSM"

    const-string v4, "EVENT_GET_HTC_SIM_TYPES, exception happen !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2615
    :cond_60
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v25, v0

    .line 2616
    .local v25, ints:[I
    const/16 v42, 0x0

    .line 2617
    .local v42, simGroup:I
    move-object/from16 v0, v25

    array-length v2, v0

    const/4 v4, 0x1

    if-le v2, v4, :cond_62

    .line 2618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_HTC_SIM_TYPES: simtype group= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v25, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ,simtype= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget v4, v25, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2619
    const/4 v2, 0x0

    aget v42, v25, v2

    .line 2620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "gsm.htc.sim.types.group"

    const/4 v5, 0x0

    aget v5, v25, v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2631
    :goto_1d
    const/4 v2, 0x2

    move/from16 v0, v42

    if-eq v0, v2, :cond_61

    const/4 v2, 0x3

    move/from16 v0, v42

    if-ne v0, v2, :cond_2

    .line 2634
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v20

    .line 2636
    .restart local v20       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f31

    const/16 v5, 0x27

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2637
    const/16 v26, 0x0

    .line 2638
    goto/16 :goto_1

    .line 2622
    .end local v20           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_62
    const-string v2, "get ruturning value 2 from WSD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1d

    .line 2644
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v25           #ints:[I
    .end local v42           #simGroup:I
    :sswitch_27
    const-string v2, "EVENT_PBK_READY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2647
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v2

    if-nez v2, :cond_63

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-nez v2, :cond_63

    .line 2650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getSubscriberNumber(Landroid/os/Message;)V

    .line 2654
    :cond_63
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v4, "LOADED_UNDER_NETWORK_LOCK"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    const-string v2, "(EVENT_PBK_READY) Broadcast INTENT_VALUE_ICC_LOADED_UNDER_NETWORK_LOCK to load sim pb done."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2665
    :cond_64
    const-string v2, "gsm.sim.types"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 2666
    .local v43, simType:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2667
    const-string v2, "com.htc.intent.action.SIM_FILE_UPDATE"

    const/16 v4, 0x6f3a

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries(Ljava/lang/String;I)V

    .line 2668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-eqz v2, :cond_2

    .line 2669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto/16 :goto_1

    .line 2677
    .end local v43           #simType:Ljava/lang/String;
    :sswitch_28
    const-string v2, "EVENT_RETRY_MSISDN_QUERY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getSubscriberNumber(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2685
    :sswitch_29
    const-string v2, "GSM"

    const-string v4, "EVENT_SIM_SWAP_STATUS"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    new-instance v24, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SIM_SWAP_STATUS"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2687
    .local v24, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2695
    .end local v24           #intent:Landroid/content/Intent;
    :sswitch_2a
    const/16 v26, 0x1

    .line 2696
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2698
    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEUTRAN_excpetion:Z

    .line 2699
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_67

    .line 2700
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 2704
    .restart local v14       #data:[B
    array-length v2, v14

    const/4 v4, 0x5

    if-lt v2, v4, :cond_66

    .line 2705
    const/4 v2, 0x3

    aget-byte v2, v14, v2

    and-int/lit8 v2, v2, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_65

    .line 2706
    const-string v2, "access technology selected"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2707
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEUTRAN:Z

    goto/16 :goto_1

    .line 2709
    :cond_65
    const-string v2, "access technology not selected"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2710
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEUTRAN:Z

    goto/16 :goto_1

    .line 2713
    :cond_66
    const-string v2, "GSM"

    const-string v4, "length of EF_HPLMNwAcT is incorrect"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2716
    .end local v14           #data:[B
    :cond_67
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEUTRAN_excpetion:Z

    .line 2717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET EF_HPLMNwAcT, Exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2727
    .end local v11           #ar:Landroid/os/AsyncResult;
    :sswitch_2b
    const-string v2, "EVENT_GET_GID1_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2728
    const/16 v26, 0x1

    .line 2729
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2730
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 2731
    .restart local v14       #data:[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2738
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_1e
    array-length v2, v14

    move/from16 v0, v19

    if-ge v0, v2, :cond_68

    .line 2739
    aget-byte v2, v14, v19

    const/4 v4, -0x1

    if-ne v2, v4, :cond_69

    .line 2743
    :cond_68
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    .line 2745
    .local v18, gid:Ljava/lang/String;
    if-nez v19, :cond_6a

    .line 2746
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    .line 2750
    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_GID1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2738
    .end local v18           #gid:Ljava/lang/String;
    :cond_69
    add-int/lit8 v19, v19, 0x1

    goto :goto_1e

    .line 2748
    .restart local v18       #gid:Ljava/lang/String;
    :cond_6a
    const/4 v2, 0x0

    mul-int/lit8 v4, v19, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    goto :goto_1f

    .line 2758
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .end local v18           #gid:Ljava/lang/String;
    .end local v19           #i:I
    :sswitch_2c
    const-string v2, "EVENT_GET_O2_PERSO_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2759
    const/16 v26, 0x1

    .line 2760
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2761
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v14, v0

    .line 2763
    .restart local v14       #data:[B
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    .line 2764
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2768
    if-eqz v14, :cond_2

    array-length v2, v14

    if-lez v2, :cond_2

    .line 2769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_O2_PERSO: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2770
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_1

    .line 1355
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_c
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x9 -> :sswitch_e
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_f
        0xd -> :sswitch_11
        0xe -> :sswitch_13
        0xf -> :sswitch_14
        0x11 -> :sswitch_1d
        0x12 -> :sswitch_15
        0x13 -> :sswitch_16
        0x14 -> :sswitch_1f
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x18 -> :sswitch_10
        0x19 -> :sswitch_20
        0x1a -> :sswitch_1e
        0x1e -> :sswitch_8
        0x1f -> :sswitch_21
        0x20 -> :sswitch_22
        0x21 -> :sswitch_23
        0x23 -> :sswitch_19
        0x24 -> :sswitch_1a
        0x26 -> :sswitch_26
        0x27 -> :sswitch_d
        0x65 -> :sswitch_25
        0x68 -> :sswitch_1c
        0x69 -> :sswitch_1b
        0x6a -> :sswitch_2
        0x6b -> :sswitch_12
        0x6c -> :sswitch_24
        0x6d -> :sswitch_27
        0x6e -> :sswitch_28
        0x70 -> :sswitch_29
        0x71 -> :sswitch_2b
        0x72 -> :sswitch_2c
        0x73 -> :sswitch_7
        0x74 -> :sswitch_2a
        0x75 -> :sswitch_0
        0x76 -> :sswitch_9
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method isCallForwardingEnabled()Z
    .locals 1

    .prologue
    .line 4075
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 3860
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 2
    .parameter "efid"

    .prologue
    .line 4053
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 4054
    .local v0, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 4055
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->isSIMPhonebookFileId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4059
    .end local v0           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return v1

    .line 4057
    :catch_0
    move-exception v1

    .line 4059
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3840
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3844
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3852
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    return-void
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "s"
    .parameter "tr"

    .prologue
    .line 3848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SIMRecords] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3849
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 3128
    const-string v4, "SIMRecords: record load complete"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3131
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3132
    .local v3, prop:Ljava/lang/String;
    const-string v4, "READY"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3133
    const-string v4, "SIMRecords: record load complete, but SIM is not ready state"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3198
    :cond_0
    :goto_0
    return-void

    .line 3139
    :cond_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsRecordsLoad:Z

    .line 3143
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v4

    if-ne v5, v4, :cond_2

    .line 3145
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadCompleted:Z

    .line 3149
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->checkcallForwardingStatus()V

    .line 3152
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 3155
    .local v2, operator:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->initUSSDExcludeNumbers()V

    .line 3159
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 3160
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 3163
    .end local v2           #operator:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3164
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v8, v8, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3168
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 3169
    .restart local v2       #operator:Ljava/lang/String;
    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3171
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 3173
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x51

    if-eq v4, v5, :cond_3

    .line 3174
    const-string v4, "gsm.sim.operator.iso-country"

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v5, "LOADED"

    invoke-virtual {v4, v5, v8}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3180
    :cond_4
    const-string v4, "SIM"

    const-string v5, "[SIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3188
    .end local v2           #operator:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v4, :cond_0

    .line 3189
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v0

    .line 3190
    .local v0, appId:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v1

    .line 3191
    .local v1, iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v1, :cond_0

    .line 3192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": record load complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccCardProxy;->setAllRecordsLoaded(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 548
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 549
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 550
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 552
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 553
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateMsisdnInfo()V

    .line 557
    :cond_0
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 558
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 564
    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 565
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 567
    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mValidSPN:Z

    .line 572
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 573
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 574
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 575
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 577
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 578
    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorNameSource:I

    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 589
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x49

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x54

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x55

    if-eq v0, v1, :cond_2

    .line 593
    const-string v0, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 594
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_2

    .line 597
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_2
    const-string v0, "gsm.sim.cbmi.channel"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 613
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->disableCallForwardingIcon()V

    .line 614
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadCompleted:Z

    .line 615
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 616
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 626
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mGID1:Ljava/lang/String;

    .line 629
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEFO2Perso:[B

    .line 633
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsRecordsLoad:Z

    .line 637
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    .line 639
    return-void
.end method

.method public onReady()V
    .locals 3

    .prologue
    .line 3272
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3274
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3278
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V

    .line 3282
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 3284
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries()V

    .line 3286
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3104
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3107
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    if-ne v0, v2, :cond_2

    .line 3110
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 3111
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-nez v0, :cond_0

    .line 3114
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchMWIfromUE()V

    .line 3120
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    .line 3125
    :cond_1
    :goto_0
    return-void

    .line 3121
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-gez v0, :cond_1

    .line 3122
    const-string v0, "GSM"

    const-string v1, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 1265
    if-eqz p1, :cond_0

    .line 1269
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 1271
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dropSimPbkEntries()V

    .line 1273
    :cond_0
    return-void
.end method

.method queryCFUIfNecessary()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1202
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 1203
    .local v3, phone:Lcom/android/internal/telephony/PhoneBase;
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    .line 1204
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cfuQueryCompleted:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mloadCompleted:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-nez v6, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->checkTestIcc()Z

    move-result v6

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsMFG:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mIsNEL:Z

    if-nez v6, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v6

    const/16 v7, 0xe

    if-eq v6, v7, :cond_7

    .line 1212
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "cfu_query_when_campon"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_9

    move v0, v4

    .line 1215
    .local v0, cfuQuery:Z
    :goto_1
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x99

    if-ne v6, v7, :cond_2

    .line 1216
    const/4 v0, 0x0

    .line 1220
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1221
    const/4 v0, 0x1

    .line 1225
    :cond_3
    const/4 v1, 0x0

    .line 1226
    .local v1, noCfuQuery:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_5

    .line 1227
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1228
    .local v2, operator:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1229
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords;->ORANGE_NETWORKLIST:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1230
    const/4 v1, 0x1

    .line 1234
    :cond_4
    if-nez v1, :cond_5

    if-ne v0, v4, :cond_5

    .line 1237
    const/16 v6, 0x6c

    const-wide/16 v7, 0x3e8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->sendEmptyMessageDelayed(IJ)Z

    .line 1238
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cfuQueryCompleted:Z

    .line 1242
    .end local v2           #operator:Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v1, :cond_7

    .line 1245
    :cond_6
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cfuQueryCompleted:Z

    .line 1251
    .end local v0           #cfuQuery:Z
    .end local v1           #noCfuQuery:Z
    :cond_7
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->disableCfuIcon:Z

    if-ne v6, v4, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    if-eq v6, v4, :cond_8

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    if-ne v6, v4, :cond_0

    .line 1252
    :cond_8
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->disableCfuIcon:Z

    .line 1253
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    move v0, v5

    .line 1212
    goto :goto_1
.end method

.method resetCallForwardingFlag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1184
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cfuQueryCompleted:Z

    .line 1185
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    if-ne v0, v2, :cond_1

    .line 1186
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1187
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1190
    :cond_1
    return-void
.end method

.method public setCBLanguageEFlp([B)V
    .locals 3
    .parameter "lp"

    .prologue
    .line 2992
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f05

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2999
    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 3
    .parameter "msgId"
    .parameter "onComplete"

    .prologue
    .line 3004
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f45

    const/16 v2, 0x24

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 3012
    return-void
.end method

.method public setDataCallForwardingFlag(IZILjava/lang/String;)V
    .locals 10
    .parameter "line"
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "dialNumber"

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x1

    .line 1096
    if-eq p1, v3, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1098
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataCallForwardingFlag enable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1100
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->dataCallForwardingEnabled:Z

    .line 1106
    if-eqz p2, :cond_2

    .line 1107
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mDataCFUNumber:Ljava/lang/String;

    .line 1108
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataCFUNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mDataCFUNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_4

    .line 1121
    if-eqz p2, :cond_6

    .line 1125
    if-nez p3, :cond_5

    .line 1126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    .line 1131
    :goto_1
    if-eqz p4, :cond_3

    .line 1132
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v8

    .line 1133
    .local v8, str:[B
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x2

    array-length v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1134
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x3

    array-length v3, v8

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    .end local v8           #str:[B
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v9, 0x6fcb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1154
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 1155
    if-eqz p2, :cond_7

    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1165
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1170
    :catch_0
    move-exception v6

    .line 1171
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1128
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit8 v3, p3, 0x1f

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 1138
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xef

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1140
    const/4 v7, 0x2

    .local v7, i:I
    :goto_3
    if-ge v7, v4, :cond_3

    .line 1141
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    aget-byte v1, v0, v7

    or-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 1140
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1159
    .end local v7           #i:I
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x6f40

    const/16 v6, 0x1e

    const/4 v4, 0x1

    .line 686
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTemp:Ljava/lang/String;

    .line 687
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTagTemp:Ljava/lang/String;

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set MSISDN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTagTemp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "xxxxxxx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 689
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTagTemp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTemp:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v3, 0x6f4e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 701
    :goto_0
    return-void

    .line 697
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v3, 0x6f4a

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setOperatorNameSource(I)V
    .locals 0
    .parameter "source"

    .prologue
    .line 3987
    iput p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorNameSource:I

    .line 3988
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "response"

    .prologue
    .line 3977
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3978
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3980
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 8
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 958
    if-eq p1, v1, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_2

    .line 967
    if-eqz p2, :cond_3

    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 978
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fcb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 985
    if-eqz p2, :cond_4

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 995
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v6

    .line 1001
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 970
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 989
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceCallForwardingFlag(IZILjava/lang/String;)V
    .locals 11
    .parameter "line"
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "dialNumber"

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x1

    .line 1012
    if-eq p1, v3, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1019
    if-eqz p2, :cond_2

    .line 1020
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCFUNumber:Ljava/lang/String;

    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCFUNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v6, "null"

    .line 1025
    .local v6, cfuNumber:Ljava/lang/String;
    :goto_1
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCFUNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    .end local v6           #cfuNumber:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1035
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_4

    .line 1037
    if-eqz p2, :cond_7

    .line 1041
    if-nez p3, :cond_6

    .line 1042
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    .line 1047
    :goto_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1048
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v9

    .line 1049
    .local v9, str:[B
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x2

    array-length v2, v9

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1050
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x3

    array-length v3, v9

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1063
    .end local v9           #str:[B
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v10, 0x6fcb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1069
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 1070
    if-eqz p2, :cond_8

    .line 1071
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1080
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1085
    :catch_0
    move-exception v7

    .line 1086
    .local v7, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1024
    .end local v7           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    const-string v6, "xxxxxxxx"

    goto/16 :goto_1

    .line 1044
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit8 v3, p3, 0x1f

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    .line 1054
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1056
    const/4 v8, 0x2

    .local v8, i:I
    :goto_4
    if-ge v8, v4, :cond_3

    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    aget-byte v1, v0, v8

    or-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 1056
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1074
    .end local v8           #i:I
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 754
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 755
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 757
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 799
    :goto_0
    return-void

    .line 761
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 770
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 775
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 780
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 792
    :cond_2
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 795
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 797
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 836
    if-eq p1, v1, :cond_0

    .line 908
    :goto_0
    return-void

    .line 842
    :cond_0
    if-gez p2, :cond_4

    .line 843
    const/4 p2, -0x1

    .line 850
    :cond_1
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 852
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 855
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v2, :cond_2

    .line 859
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    iget v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v5, :cond_5

    :goto_2
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 863
    if-gez p2, :cond_7

    .line 870
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 883
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 889
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_3

    .line 891
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v0, :cond_8

    const/4 v0, 0x5

    :goto_4
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 903
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateMWItoUE()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 905
    :catch_0
    move-exception v6

    .line 906
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 844
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const/16 v2, 0xff

    if-le p2, v2, :cond_1

    .line 847
    const/16 p2, 0xff

    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 859
    goto :goto_2

    .line 874
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_3

    .line 878
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 891
    :cond_8
    const/16 v0, 0xa

    goto :goto_4
.end method
