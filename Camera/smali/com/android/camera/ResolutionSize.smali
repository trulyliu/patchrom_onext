.class public final Lcom/android/camera/ResolutionSize;
.super Ljava/lang/Object;
.source "ResolutionSize.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static hm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static rsInstance:Lcom/android/camera/ResolutionSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    const-string v0, "ResolutionSize"

    sput-object v0, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    .line 8
    sput-object v1, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    .line 9
    sput-object v1, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    const-string v1, "ResolutionSize"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    .line 22
    invoke-static {}, Lcom/android/camera/ResolutionSize;->init()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/android/camera/ResolutionSize;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/android/camera/ResolutionSize;

    invoke-direct {v0}, Lcom/android/camera/ResolutionSize;-><init>()V

    sput-object v0, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    .line 15
    :cond_0
    sget-object v0, Lcom/android/camera/ResolutionSize;->rsInstance:Lcom/android/camera/ResolutionSize;

    return-object v0
.end method

.method private static init()V
    .locals 11

    .prologue
    const v10, 0x222e0

    const v9, 0x1adb0

    const v8, 0x2bf20

    const v7, 0x61a80

    const v6, 0x3d090

    .line 27
    sget-object v4, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    const-string v5, "init"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v2, "_super"

    .line 30
    .local v2, high:Ljava/lang/String;
    const-string v1, "_fine"

    .line 31
    .local v1, fine:Ljava/lang/String;
    const-string v3, "_normal"

    .line 32
    .local v3, normal:Ljava/lang/String;
    const-string v0, "_basic"

    .line 37
    .local v0, basic:Ljava/lang/String;
    const v4, 0x7f0a0155

    const v5, 0x1312d0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 38
    const v4, 0x7f0a0155

    const v5, 0x9c400

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 39
    const v4, 0x7f0a0155

    const v5, 0x5f370

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 40
    const v4, 0x7f0a0155

    const v5, 0x30d40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 42
    const v4, 0x7f0a0153

    const v5, 0xb71b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 43
    const v4, 0x7f0a0153

    const v5, 0x5cc60

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 44
    const v4, 0x7f0a0153

    const v5, 0x35b60

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 45
    const v4, 0x7f0a0153

    invoke-static {v4, v0, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 47
    const v4, 0x7f0a0151

    const v5, 0x3f7a0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 48
    const v4, 0x7f0a0151

    const v5, 0x249f0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 49
    const v4, 0x7f0a0151

    const v5, 0x186a0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 50
    const v4, 0x7f0a0151

    const v5, 0xea60

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 52
    const v4, 0x7f0a0150

    const v5, 0x13c68

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 53
    const v4, 0x7f0a0150

    const v5, 0xcf08

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 54
    const v4, 0x7f0a0150

    const/16 v5, 0x7918

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 55
    const v4, 0x7f0a0150

    const/16 v5, 0x4e20

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 78
    const v4, 0x7f0a015b

    const v5, 0x170a70

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 79
    const v4, 0x7f0a015b

    const v5, 0xe30d0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 80
    const v4, 0x7f0a015b

    const v5, 0x7ef40

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 82
    const v4, 0x7f0a015a

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 83
    const v4, 0x7f0a015a

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 84
    const v4, 0x7f0a015a

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 85
    const v4, 0x7f0a015a

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 87
    const v4, 0x7f0a017e

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 88
    const v4, 0x7f0a017e

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 89
    const v4, 0x7f0a017e

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 90
    const v4, 0x7f0a017e

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 92
    const v4, 0x7f0a0159

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 93
    const v4, 0x7f0a0159

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 94
    const v4, 0x7f0a0159

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 95
    const v4, 0x7f0a0159

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 97
    const v4, 0x7f0a0158

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 98
    const v4, 0x7f0a0158

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 99
    const v4, 0x7f0a0158

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 100
    const v4, 0x7f0a0158

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 102
    const v4, 0x7f0a0157

    invoke-static {v4, v2, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 103
    const v4, 0x7f0a0157

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 104
    const v4, 0x7f0a0157

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 105
    const v4, 0x7f0a0157

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 129
    const v4, 0x7f0a0161

    const v5, 0x170a70

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 130
    const v4, 0x7f0a0161

    const v5, 0xe30d0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 131
    const v4, 0x7f0a0161

    const v5, 0x7ef40

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 133
    const v4, 0x7f0a0160

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 134
    const v4, 0x7f0a0160

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 135
    const v4, 0x7f0a0160

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 136
    const v4, 0x7f0a0160

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 138
    const v4, 0x7f0a017d

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 139
    const v4, 0x7f0a017d

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 140
    const v4, 0x7f0a017d

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 141
    const v4, 0x7f0a017d

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 143
    const v4, 0x7f0a015f

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 144
    const v4, 0x7f0a015f

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 145
    const v4, 0x7f0a015f

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 146
    const v4, 0x7f0a015f

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 149
    const v4, 0x7f0a015e

    const v5, 0x7a120

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 150
    const v4, 0x7f0a015e

    const v5, 0x493e0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 151
    const v4, 0x7f0a015e

    invoke-static {v4, v3, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 152
    const v4, 0x7f0a015e

    invoke-static {v4, v0, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 154
    const v4, 0x7f0a015d

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 155
    const v4, 0x7f0a015d

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 156
    const v4, 0x7f0a015d

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 157
    const v4, 0x7f0a015d

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 159
    const v4, 0x7f0a015c

    invoke-static {v4, v2, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 160
    const v4, 0x7f0a015c

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 161
    const v4, 0x7f0a015c

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 162
    const v4, 0x7f0a015c

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 165
    const v4, 0x7f0a0173

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 166
    const v4, 0x7f0a0173

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 167
    const v4, 0x7f0a0173

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 168
    const v4, 0x7f0a0173

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 170
    const v4, 0x7f0a0172

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 171
    const v4, 0x7f0a0172

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 172
    const v4, 0x7f0a0172

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 173
    const v4, 0x7f0a0172

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 175
    const v4, 0x7f0a0170

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 176
    const v4, 0x7f0a0170

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 177
    const v4, 0x7f0a0170

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 178
    const v4, 0x7f0a0170

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 182
    const v4, 0x7f0a0171

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 184
    const v4, 0x7f0a0171

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 186
    const v4, 0x7f0a0171

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 188
    const v4, 0x7f0a0171

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 190
    const v4, 0x7f0a016f

    invoke-static {v4, v2, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 191
    const v4, 0x7f0a016f

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 192
    const v4, 0x7f0a016f

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 193
    const v4, 0x7f0a016f

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 195
    const v4, 0x7f0a0174

    invoke-static {v4, v2, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 196
    const v4, 0x7f0a0174

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 197
    const v4, 0x7f0a0174

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 198
    const v4, 0x7f0a0174

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 201
    const v4, 0x7f0a0162

    const v5, 0x170a70

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 202
    const v4, 0x7f0a0162

    const v5, 0xe30d0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 203
    const v4, 0x7f0a0162

    const v5, 0x7ef40

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 205
    const v4, 0x7f0a0163

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 206
    const v4, 0x7f0a0163

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 207
    const v4, 0x7f0a0163

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 208
    const v4, 0x7f0a0163

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 210
    const v4, 0x7f0a0164

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 211
    const v4, 0x7f0a0164

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 212
    const v4, 0x7f0a0164

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 213
    const v4, 0x7f0a0164

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 215
    const v4, 0x7f0a0165

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 216
    const v4, 0x7f0a0165

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 217
    const v4, 0x7f0a0165

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 218
    const v4, 0x7f0a0165

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 220
    const v4, 0x7f0a0166

    invoke-static {v4, v2, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 221
    const v4, 0x7f0a0166

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 222
    const v4, 0x7f0a0166

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 223
    const v4, 0x7f0a0166

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 226
    const v4, 0x7f0a0167

    const v5, 0x170a70

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 227
    const v4, 0x7f0a0167

    const v5, 0xe30d0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 228
    const v4, 0x7f0a0167

    const v5, 0x7ef40

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 230
    const v4, 0x7f0a0168

    const v5, 0x147260

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 231
    const v4, 0x7f0a0168

    const v5, 0xfb770

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 232
    const v4, 0x7f0a0168

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 233
    const v4, 0x7f0a0168

    invoke-static {v4, v0, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 235
    const v4, 0x7f0a0169

    const v5, 0xb4aa0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 236
    const v4, 0x7f0a0169

    const v5, 0x50910

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 237
    const v4, 0x7f0a0169

    const v5, 0x41eb0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 238
    const v4, 0x7f0a0169

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 240
    const v4, 0x7f0a016a

    const v5, 0x64190

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 241
    const v4, 0x7f0a016a

    const v5, 0x493e0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 242
    const v4, 0x7f0a016a

    invoke-static {v4, v3, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 243
    const v4, 0x7f0a016a

    invoke-static {v4, v0, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 245
    const v4, 0x7f0a016b

    const v5, 0x7a120

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 246
    const v4, 0x7f0a016b

    const v5, 0x493e0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 247
    const v4, 0x7f0a016b

    invoke-static {v4, v3, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 248
    const v4, 0x7f0a016b

    invoke-static {v4, v0, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 250
    const v4, 0x7f0a016c

    const v5, 0x64190

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 251
    const v4, 0x7f0a016c

    const v5, 0x493e0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 252
    const v4, 0x7f0a016c

    invoke-static {v4, v3, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 253
    const v4, 0x7f0a016c

    invoke-static {v4, v0, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 255
    const v4, 0x7f0a016d

    invoke-static {v4, v2, v6}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 256
    const v4, 0x7f0a016d

    invoke-static {v4, v1, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 257
    const v4, 0x7f0a016d

    const v5, 0x27100

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 258
    const v4, 0x7f0a016d

    const v5, 0x15f90

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 260
    const v4, 0x7f0a016e

    invoke-static {v4, v2, v9}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 261
    const v4, 0x7f0a016e

    const v5, 0xe678

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 262
    const v4, 0x7f0a016e

    const v5, 0x84d0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 263
    const v4, 0x7f0a016e

    const/16 v5, 0x6978

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 266
    const v4, 0x7f0a0144

    const v5, 0x1e8480

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 267
    const v4, 0x7f0a0144

    const v5, 0x120160

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 268
    const v4, 0x7f0a0144

    const v5, 0xad570

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 270
    const v4, 0x7f0a0143

    const v5, 0x17a6b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 271
    const v4, 0x7f0a0143

    const v5, 0xdbba0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 272
    const v4, 0x7f0a0143

    const v5, 0xa6040

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 273
    const v4, 0x7f0a0143

    const v5, 0x57e40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 275
    const v4, 0x7f0a017c

    const v5, 0x17a6b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 276
    const v4, 0x7f0a017c

    const v5, 0xdbba0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 277
    const v4, 0x7f0a017c

    const v5, 0xa6040

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 278
    const v4, 0x7f0a017c

    const v5, 0x57e40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 280
    const v4, 0x7f0a0141

    const v5, 0xcaa30

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 281
    const v4, 0x7f0a0141

    const v5, 0x8b290

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 282
    const v4, 0x7f0a0141

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 283
    const v4, 0x7f0a0141

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 286
    const v4, 0x7f0a0145

    const v5, 0x1e8480

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 287
    const v4, 0x7f0a0145

    const v5, 0x120160

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 288
    const v4, 0x7f0a0145

    const v5, 0xad570

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 290
    const v4, 0x7f0a0146

    const v5, 0x17a6b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 291
    const v4, 0x7f0a0146

    const v5, 0xdbba0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 292
    const v4, 0x7f0a0146

    const v5, 0xa6040

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 293
    const v4, 0x7f0a0146

    const v5, 0x57e40

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 295
    const v4, 0x7f0a0147

    const v5, 0xcaa30

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 296
    const v4, 0x7f0a0147

    const v5, 0x8b290

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 297
    const v4, 0x7f0a0147

    invoke-static {v4, v3, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 298
    const v4, 0x7f0a0147

    const v5, 0x33450

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 300
    const v4, 0x7f0a0148

    const v5, 0xb71b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 301
    const v4, 0x7f0a0148

    const v5, 0x7c830

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 302
    const v4, 0x7f0a0148

    const v5, 0x5a550

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 303
    const v4, 0x7f0a0148

    const v5, 0x1a1f8

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 305
    const v4, 0x7f0a0149

    const v5, 0x64190

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 306
    const v4, 0x7f0a0149

    const v5, 0x45948

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 307
    const v4, 0x7f0a0149

    const v5, 0x2f9b8

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 308
    const v4, 0x7f0a0149

    const v5, 0x157c0

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 310
    const v4, 0x7f0a014a

    invoke-static {v4, v2, v7}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 311
    const v4, 0x7f0a014a

    const v5, 0x445c0

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 312
    const v4, 0x7f0a014a

    const v5, 0x2e630

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 313
    const v4, 0x7f0a014a

    const v5, 0x153d8

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 315
    const v4, 0x7f0a014c

    const v5, 0x38270

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 316
    const v4, 0x7f0a014c

    const v5, 0x27100

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 317
    const v4, 0x7f0a014c

    invoke-static {v4, v3, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 318
    const v4, 0x7f0a014c

    const v5, 0x11170

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 320
    const v4, 0x7f0a014b

    const v5, 0x900b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 321
    const v4, 0x7f0a014b

    const v5, 0x64190

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 322
    const v4, 0x7f0a014b

    const v5, 0x53020

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 323
    const v4, 0x7f0a014b

    const v5, 0x14c08

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 325
    const v4, 0x7f0a014d

    invoke-static {v4, v2, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 326
    const v4, 0x7f0a014d

    invoke-static {v4, v1, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 327
    const v4, 0x7f0a014d

    const v5, 0x1fbd0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 328
    const v4, 0x7f0a014d

    const v5, 0xbb80

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 331
    const v4, 0x7f0a0140

    const v5, 0xb71b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 332
    const v4, 0x7f0a0140

    const v5, 0x7c830

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 333
    const v4, 0x7f0a0140

    const v5, 0x5a550

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 334
    const v4, 0x7f0a0140

    const v5, 0x1a1f8

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 336
    const v4, 0x7f0a013f

    const v5, 0x900b0

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 337
    const v4, 0x7f0a013f

    const v5, 0x64190

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 338
    const v4, 0x7f0a013f

    const v5, 0x53020

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 339
    const v4, 0x7f0a013f

    const v5, 0x14c08

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 341
    const v4, 0x7f0a013d

    invoke-static {v4, v2, v8}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 342
    const v4, 0x7f0a013d

    invoke-static {v4, v1, v10}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 343
    const v4, 0x7f0a013d

    const v5, 0x1fbd0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 344
    const v4, 0x7f0a013d

    const v5, 0xbb80

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 367
    const v4, 0x7f0a017a

    const v5, 0x160c88

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 368
    const v4, 0x7f0a017a

    const v5, 0xeb988

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 369
    const v4, 0x7f0a017a

    const v5, 0x83d60

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 370
    const v4, 0x7f0a017a

    const v5, 0x4a768

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 373
    const v4, 0x7f0a014f

    const v5, 0xa028

    invoke-static {v4, v2, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 374
    const v4, 0x7f0a014f

    const/16 v5, 0x5208

    invoke-static {v4, v1, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 375
    const v4, 0x7f0a014f

    const/16 v5, 0x32c8

    invoke-static {v4, v3, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 376
    const v4, 0x7f0a014f

    const/16 v5, 0x2328

    invoke-static {v4, v0, v5}, Lcom/android/camera/ResolutionSize;->put(ILjava/lang/String;I)V

    .line 377
    return-void
.end method

.method private static put(ILjava/lang/String;I)V
    .locals 4
    .parameter "resolutionID"
    .parameter "QualityKey"
    .parameter "nSize"

    .prologue
    .line 380
    sget-object v0, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    return-void
.end method


# virtual methods
.method public getSize(ILjava/lang/String;)I
    .locals 4
    .parameter "resolutionID"
    .parameter "QualityKey"

    .prologue
    .line 387
    sget-object v2, Lcom/android/camera/ResolutionSize;->TAG:Ljava/lang/String;

    const-string v3, "getSize"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, sb:Ljava/lang/StringBuilder;
    sget-object v2, Lcom/android/camera/ResolutionSize;->hm:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 390
    .local v0, nValue:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method
