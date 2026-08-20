.class public final enum Lcom/samsung/android/server/wifi/driver/WifiChipVendor;
.super Ljava/lang/Enum;
.source "WifiChipVendor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/driver/WifiChipVendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum Broadcom:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum MTK:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum Marvell:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum QCA:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum Qualcomm:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum S_LSI:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum Spreadtrum:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field public static final enum UNKNOWN:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;


# instance fields
.field private factoryModeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "NA"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->UNKNOWN:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v3, "Broadcom"

    const/4 v4, 0x1

    const-string v5, "BR"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Broadcom:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 6
    new-instance v3, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v5, "Qualcomm"

    const/4 v6, 0x2

    const-string v7, "QC"

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Qualcomm:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 7
    new-instance v5, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v8, "QCA"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->QCA:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 8
    new-instance v7, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v8, "Marvell"

    const/4 v10, 0x4

    const-string v11, "MV"

    invoke-direct {v7, v8, v10, v11}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Marvell:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 9
    new-instance v8, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v11, "Spreadtrum"

    const/4 v12, 0x5

    const-string v13, "SP"

    invoke-direct {v8, v11, v12, v13}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->Spreadtrum:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 10
    new-instance v11, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v13, "S_LSI"

    const/4 v14, 0x6

    const-string v15, "LS"

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->S_LSI:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 11
    new-instance v13, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const-string v15, "MTK"

    const/4 v14, 0x7

    const-string v12, "MT"

    invoke-direct {v13, v15, v14, v12}, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->MTK:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v9

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v8, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 3
    sput-object v12, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->$VALUES:[Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->factoryModeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/driver/WifiChipVendor;
    .registers 2

    .line 3
    const-class v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/driver/WifiChipVendor;
    .registers 1

    .line 3
    sget-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->$VALUES:[Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    return-object v0
.end method


# virtual methods
.method public getFactoryModeName()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->factoryModeName:Ljava/lang/String;

    return-object p0
.end method
