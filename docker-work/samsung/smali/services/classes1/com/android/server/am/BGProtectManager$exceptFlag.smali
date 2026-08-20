.class final enum Lcom/android/server/am/BGProtectManager$exceptFlag;
.super Ljava/lang/Enum;
.source "BGProtectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BGProtectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "exceptFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/BGProtectManager$exceptFlag;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum NORMALONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

.field public static final enum SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 947
    new-instance v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v1, "NORMALANDKNOXPWHL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOXPWHL:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 948
    new-instance v1, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v3, "NORMALONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 949
    new-instance v3, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v5, "NORMALANDKNOX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 950
    new-instance v5, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v7, "KNOXONLY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/am/BGProtectManager$exceptFlag;->KNOXONLY:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 951
    new-instance v7, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v9, "SANDBOX"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 952
    new-instance v9, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v11, "CAMERAGUARD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 953
    new-instance v11, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v13, "BROWSERMAIN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 954
    new-instance v13, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v15, "HOMEHUB"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 955
    new-instance v15, Lcom/android/server/am/BGProtectManager$exceptFlag;

    const-string v14, "CAMERAMEDIA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/android/server/am/BGProtectManager$exceptFlag;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/android/server/am/BGProtectManager$exceptFlag;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 946
    sput-object v14, Lcom/android/server/am/BGProtectManager$exceptFlag;->$VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 958
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 959
    iput p3, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/BGProtectManager$exceptFlag;
    .registers 2

    .line 946
    const-class v0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BGProtectManager$exceptFlag;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/BGProtectManager$exceptFlag;
    .registers 1

    .line 946
    sget-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->$VALUES:[Lcom/android/server/am/BGProtectManager$exceptFlag;

    invoke-virtual {v0}, [Lcom/android/server/am/BGProtectManager$exceptFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/BGProtectManager$exceptFlag;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .registers 1

    .line 967
    iget p0, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()I
    .registers 1

    .line 963
    iget p0, p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->value:I

    return p0
.end method
