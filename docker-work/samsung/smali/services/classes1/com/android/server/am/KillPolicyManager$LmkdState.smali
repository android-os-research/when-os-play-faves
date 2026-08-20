.class public final enum Lcom/android/server/am/KillPolicyManager$LmkdState;
.super Ljava/lang/Enum;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LmkdState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/KillPolicyManager$LmkdState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_0:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_1:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_10:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_11:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_12:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_13:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_14:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_15:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_2:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_3:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_4:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_5:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_6:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_7:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_8:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public static final enum LEVEL_9:Lcom/android/server/am/KillPolicyManager$LmkdState;


# instance fields
.field private mLevel:I


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    .line 1853
    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v1, "LEVEL_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_0:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1854
    new-instance v1, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v3, "LEVEL_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_1:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1855
    new-instance v3, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v5, "LEVEL_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_2:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1856
    new-instance v5, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v7, "LEVEL_3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_3:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1857
    new-instance v7, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v9, "LEVEL_4"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_4:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1858
    new-instance v9, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v11, "LEVEL_5"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_5:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1859
    new-instance v11, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v13, "LEVEL_6"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_6:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1860
    new-instance v13, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v15, "LEVEL_7"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_7:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1861
    new-instance v15, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v14, "LEVEL_8"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_8:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1862
    new-instance v14, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v12, "LEVEL_9"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_9:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1863
    new-instance v12, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v10, "LEVEL_10"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_10:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1864
    new-instance v10, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v8, "LEVEL_11"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_11:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1865
    new-instance v8, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v6, "LEVEL_12"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_12:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1866
    new-instance v6, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v4, "LEVEL_13"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_13:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1867
    new-instance v4, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v2, "LEVEL_14"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_14:Lcom/android/server/am/KillPolicyManager$LmkdState;

    .line 1868
    new-instance v2, Lcom/android/server/am/KillPolicyManager$LmkdState;

    const-string v6, "LEVEL_15"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/android/server/am/KillPolicyManager$LmkdState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_15:Lcom/android/server/am/KillPolicyManager$LmkdState;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/android/server/am/KillPolicyManager$LmkdState;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 1852
    sput-object v6, Lcom/android/server/am/KillPolicyManager$LmkdState;->$VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1872
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1873
    iput p3, p0, Lcom/android/server/am/KillPolicyManager$LmkdState;->mLevel:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$LmkdState;
    .registers 2

    .line 1852
    const-class v0, Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/KillPolicyManager$LmkdState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$LmkdState;
    .registers 1

    .line 1852
    sget-object v0, Lcom/android/server/am/KillPolicyManager$LmkdState;->$VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$LmkdState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/KillPolicyManager$LmkdState;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .registers 1

    .line 1877
    iget p0, p0, Lcom/android/server/am/KillPolicyManager$LmkdState;->mLevel:I

    return p0
.end method
