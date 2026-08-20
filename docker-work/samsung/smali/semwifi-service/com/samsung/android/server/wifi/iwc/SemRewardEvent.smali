.class public final enum Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;
.super Ljava/lang/Enum;
.source "SemRewardEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum AGG_SNS_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum AGG_SNS_ON:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum AUTO_DISCONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum CELLULAR_DATA_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum CONNECTION_SWITCHED_TOO_SHORT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum LESSEVENT_INDEXLIMIT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum MANUAL_DISCONNECT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum MANUAL_RECONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum MANUAL_SWITCH:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum MANUAL_SWITCH_G:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum MANUAL_SWITCH_L:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum MOREEVENT_INDEXLIMIT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum NETWORK_CONNECTED:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum NETWORK_CONNECTED_WITH_SNS_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum NETWORK_CONNECTED_WITH_SNS_ON:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum NETWORK_DISCONNECTED:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum NO_EVENT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum OTHEREVENT_INDEXLIMIT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum POOR_LINK:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum SNS_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum SNS_ON:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public static final enum WIFI_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v1, "LESSEVENT_INDEXLIMIT"

    const/4 v2, 0x0

    const/16 v3, -0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->LESSEVENT_INDEXLIMIT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v3, "MOREEVENT_INDEXLIMIT"

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MOREEVENT_INDEXLIMIT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 7
    new-instance v3, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v6, "OTHEREVENT_INDEXLIMIT"

    const/4 v7, 0x2

    const/16 v8, 0x64

    invoke-direct {v3, v6, v7, v8}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->OTHEREVENT_INDEXLIMIT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 8
    new-instance v6, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v8, "NO_EVENT"

    const/4 v9, 0x3

    const/16 v10, 0x65

    invoke-direct {v6, v8, v9, v10}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->NO_EVENT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 9
    new-instance v8, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v10, "POOR_LINK"

    const/4 v11, 0x4

    const/16 v12, 0x66

    invoke-direct {v8, v10, v11, v12}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->POOR_LINK:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 10
    new-instance v10, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v12, "MANUAL_SWITCH"

    const/4 v13, 0x5

    const/16 v14, 0xb

    invoke-direct {v10, v12, v13, v14}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 11
    new-instance v12, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v15, "MANUAL_SWITCH_G"

    const/4 v13, 0x6

    const/16 v11, 0x67

    invoke-direct {v12, v15, v13, v11}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH_G:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 12
    new-instance v11, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v15, "MANUAL_SWITCH_L"

    const/4 v13, 0x7

    const/16 v9, -0xb

    invoke-direct {v11, v15, v13, v9}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH_L:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 13
    new-instance v9, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v15, "CONNECTION_SWITCHED_TOO_SHORT"

    const/16 v13, 0x8

    const/16 v7, -0xc

    invoke-direct {v9, v15, v13, v7}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->CONNECTION_SWITCHED_TOO_SHORT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 14
    new-instance v7, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v15, "MANUAL_RECONNECTION"

    const/16 v13, 0x9

    const/16 v4, -0xd

    invoke-direct {v7, v15, v13, v4}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_RECONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 15
    new-instance v4, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v15, "WIFI_OFF"

    const/16 v13, 0xd

    invoke-direct {v4, v15, v5, v13}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->WIFI_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 16
    new-instance v15, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v5, "AUTO_DISCONNECTION"

    invoke-direct {v15, v5, v14, v2}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->AUTO_DISCONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 17
    new-instance v5, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v14, "AGG_SNS_ON"

    const/16 v2, 0xc

    const/16 v13, 0x68

    invoke-direct {v5, v14, v2, v13}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->AGG_SNS_ON:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 18
    new-instance v13, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v14, "AGG_SNS_OFF"

    const/16 v2, 0x69

    move-object/from16 v16, v5

    const/16 v5, 0xd

    invoke-direct {v13, v14, v5, v2}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->AGG_SNS_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 19
    new-instance v2, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v5, "CELLULAR_DATA_OFF"

    const/16 v14, 0xe

    move-object/from16 v17, v13

    const/16 v13, -0xe

    invoke-direct {v2, v5, v14, v13}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->CELLULAR_DATA_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 20
    new-instance v5, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v13, "MANUAL_DISCONNECT"

    const/16 v14, 0xf

    move-object/from16 v18, v2

    const/16 v2, 0xc

    invoke-direct {v5, v13, v14, v2}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_DISCONNECT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 21
    new-instance v2, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v13, "NETWORK_DISCONNECTED"

    const/16 v14, 0x10

    move-object/from16 v19, v5

    const/16 v5, 0x6a

    invoke-direct {v2, v13, v14, v5}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->NETWORK_DISCONNECTED:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 22
    new-instance v5, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v13, "NETWORK_CONNECTED"

    const/16 v14, 0x11

    move-object/from16 v20, v2

    const/16 v2, 0x6b

    invoke-direct {v5, v13, v14, v2}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->NETWORK_CONNECTED:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 23
    new-instance v2, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v13, "SNS_ON"

    const/16 v14, 0x12

    move-object/from16 v21, v5

    const/16 v5, 0x32

    invoke-direct {v2, v13, v14, v5}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->SNS_ON:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 24
    new-instance v5, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v13, "SNS_OFF"

    const/16 v14, 0x13

    move-object/from16 v22, v2

    const/16 v2, -0x32

    invoke-direct {v5, v13, v14, v2}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->SNS_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 25
    new-instance v2, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v13, "NETWORK_CONNECTED_WITH_SNS_ON"

    const/16 v14, 0x14

    move-object/from16 v23, v5

    const/16 v5, 0xe

    invoke-direct {v2, v13, v14, v5}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->NETWORK_CONNECTED_WITH_SNS_ON:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 26
    new-instance v5, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v13, "NETWORK_CONNECTED_WITH_SNS_OFF"

    const/16 v14, 0x15

    move-object/from16 v24, v2

    const/16 v2, -0xf

    invoke-direct {v5, v13, v14, v2}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->NETWORK_CONNECTED_WITH_SNS_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const/16 v2, 0x16

    new-array v2, v2, [Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v11, v2, v0

    const/16 v0, 0x8

    aput-object v9, v2, v0

    const/16 v0, 0x9

    aput-object v7, v2, v0

    const/16 v0, 0xa

    aput-object v4, v2, v0

    const/16 v0, 0xb

    aput-object v15, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    aput-object v5, v2, v14

    .line 4
    sput-object v2, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->$VALUES:[Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;
    .registers 2

    .line 4
    const-class v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;
    .registers 1

    .line 4
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->$VALUES:[Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 35
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->value:I

    return p0
.end method
