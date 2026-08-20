.class public final enum Lcom/android/server/am/KillPolicyManager$LmkdCount;
.super Ljava/lang/Enum;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LmkdCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/KillPolicyManager$LmkdCount;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum ARCHIVED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum BACKUP_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum BORA_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum CACHED_APP_MAX_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum CACHED_APP_MIN_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum FOREGROUND_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum HEAVY_WEIGHT_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum HOME_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum PERCEPTIBLE_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum PERCEPTIBLE_LOW_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum PERCEPTIBLE_MEDIUM_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum PICKED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum PREVIOUS_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum SEEDBED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum SERVICE_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum SERVICE_B_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

.field public static final enum VISIBLE_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;


# instance fields
.field private mADJ:I


# direct methods
.method public static constructor <clinit>()V
    .registers 20

    .line 1882
    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v1, "CACHED_APP_MAX_ADJ"

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->CACHED_APP_MAX_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1883
    new-instance v1, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v3, "CACHED_APP_MIN_ADJ"

    const/4 v4, 0x1

    const/16 v5, 0x384

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/KillPolicyManager$LmkdCount;->CACHED_APP_MIN_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1884
    new-instance v3, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v5, "SEEDBED_ADJ"

    const/4 v6, 0x2

    const/16 v7, 0x35c

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/am/KillPolicyManager$LmkdCount;->SEEDBED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1885
    new-instance v5, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v7, "PICKED_ADJ"

    const/4 v8, 0x3

    const/16 v9, 0x352

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PICKED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1886
    new-instance v7, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v9, "ARCHIVED_ADJ"

    const/4 v10, 0x4

    const/16 v11, 0x33e

    invoke-direct {v7, v9, v10, v11}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/server/am/KillPolicyManager$LmkdCount;->ARCHIVED_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1887
    new-instance v9, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v11, "SERVICE_B_ADJ"

    const/4 v12, 0x5

    const/16 v13, 0x320

    invoke-direct {v9, v11, v12, v13}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/server/am/KillPolicyManager$LmkdCount;->SERVICE_B_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1888
    new-instance v11, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v13, "PREVIOUS_APP_ADJ"

    const/4 v14, 0x6

    const/16 v15, 0x2bc

    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PREVIOUS_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1889
    new-instance v13, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v15, "HOME_APP_ADJ"

    const/4 v14, 0x7

    const/16 v12, 0x258

    invoke-direct {v13, v15, v14, v12}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/server/am/KillPolicyManager$LmkdCount;->HOME_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1890
    new-instance v12, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v15, "SERVICE_ADJ"

    const/16 v14, 0x8

    const/16 v10, 0x1f4

    invoke-direct {v12, v15, v14, v10}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/server/am/KillPolicyManager$LmkdCount;->SERVICE_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1891
    new-instance v10, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v15, "HEAVY_WEIGHT_APP_ADJ"

    const/16 v14, 0x9

    const/16 v8, 0x190

    invoke-direct {v10, v15, v14, v8}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/server/am/KillPolicyManager$LmkdCount;->HEAVY_WEIGHT_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1892
    new-instance v8, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v15, "BORA_APP_ADJ"

    const/16 v14, 0xa

    const/16 v6, 0x15e

    invoke-direct {v8, v15, v14, v6}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/server/am/KillPolicyManager$LmkdCount;->BORA_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1893
    new-instance v6, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v15, "BACKUP_APP_ADJ"

    const/16 v14, 0xb

    const/16 v4, 0x12c

    invoke-direct {v6, v15, v14, v4}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/am/KillPolicyManager$LmkdCount;->BACKUP_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1894
    new-instance v4, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v15, "PERCEPTIBLE_LOW_APP_ADJ"

    const/16 v14, 0xc

    const/16 v2, 0xfa

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PERCEPTIBLE_LOW_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1895
    new-instance v2, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v15, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0xe1

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PERCEPTIBLE_MEDIUM_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1896
    new-instance v4, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v15, "PERCEPTIBLE_APP_ADJ"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0xc8

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/am/KillPolicyManager$LmkdCount;->PERCEPTIBLE_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1897
    new-instance v2, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v15, "VISIBLE_APP_ADJ"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x64

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/am/KillPolicyManager$LmkdCount;->VISIBLE_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 1898
    new-instance v4, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const-string v15, "FOREGROUND_APP_ADJ"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/4 v2, 0x0

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/am/KillPolicyManager$LmkdCount;->FOREGROUND_APP_ADJ:Lcom/android/server/am/KillPolicyManager$LmkdCount;

    const/16 v15, 0x11

    new-array v15, v15, [Lcom/android/server/am/KillPolicyManager$LmkdCount;

    aput-object v0, v15, v2

    const/4 v0, 0x1

    aput-object v1, v15, v0

    const/4 v0, 0x2

    aput-object v3, v15, v0

    const/4 v0, 0x3

    aput-object v5, v15, v0

    const/4 v0, 0x4

    aput-object v7, v15, v0

    const/4 v0, 0x5

    aput-object v9, v15, v0

    const/4 v0, 0x6

    aput-object v11, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v12, v15, v0

    const/16 v0, 0x9

    aput-object v10, v15, v0

    const/16 v0, 0xa

    aput-object v8, v15, v0

    const/16 v0, 0xb

    aput-object v6, v15, v0

    const/16 v0, 0xc

    aput-object v16, v15, v0

    const/16 v0, 0xd

    aput-object v17, v15, v0

    const/16 v0, 0xe

    aput-object v18, v15, v0

    const/16 v0, 0xf

    aput-object v19, v15, v0

    aput-object v4, v15, v14

    .line 1881
    sput-object v15, Lcom/android/server/am/KillPolicyManager$LmkdCount;->$VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1902
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1903
    iput p3, p0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->mADJ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$LmkdCount;
    .registers 2

    .line 1881
    const-class v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;
    .registers 1

    .line 1881
    sget-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->$VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$LmkdCount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/KillPolicyManager$LmkdCount;

    return-object v0
.end method


# virtual methods
.method public getADJ()I
    .registers 1

    .line 1907
    iget p0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->mADJ:I

    return p0
.end method
