.class public final enum Lcom/log/handler/LogHandlerUtils$LogType;
.super Ljava/lang/Enum;
.source "LogHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/LogHandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/log/handler/LogHandlerUtils$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/log/handler/LogHandlerUtils$LogType;

.field public static final enum BTHOST_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

.field public static final enum CONNSYSFW_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

.field public static final enum GPSHOST_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

.field public static final MAX_ID:I = 0x6

.field public static final enum MOBILE_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

.field public static final enum MODEM_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

.field public static final enum NETWORK_LOG:Lcom/log/handler/LogHandlerUtils$LogType;


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 21
    new-instance v0, Lcom/log/handler/LogHandlerUtils$LogType;

    const-string v1, "MOBILE_LOG"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/log/handler/LogHandlerUtils$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/log/handler/LogHandlerUtils$LogType;->MOBILE_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    new-instance v1, Lcom/log/handler/LogHandlerUtils$LogType;

    const-string v4, "MODEM_LOG"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/log/handler/LogHandlerUtils$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/log/handler/LogHandlerUtils$LogType;->MODEM_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    new-instance v4, Lcom/log/handler/LogHandlerUtils$LogType;

    const-string v6, "NETWORK_LOG"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/log/handler/LogHandlerUtils$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/log/handler/LogHandlerUtils$LogType;->NETWORK_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    new-instance v6, Lcom/log/handler/LogHandlerUtils$LogType;

    const-string v8, "CONNSYSFW_LOG"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/log/handler/LogHandlerUtils$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/log/handler/LogHandlerUtils$LogType;->CONNSYSFW_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    new-instance v8, Lcom/log/handler/LogHandlerUtils$LogType;

    const-string v10, "GPSHOST_LOG"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/log/handler/LogHandlerUtils$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/log/handler/LogHandlerUtils$LogType;->GPSHOST_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    .line 22
    new-instance v10, Lcom/log/handler/LogHandlerUtils$LogType;

    const-string v12, "BTHOST_LOG"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/log/handler/LogHandlerUtils$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/log/handler/LogHandlerUtils$LogType;->BTHOST_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    .line 20
    new-array v12, v13, [Lcom/log/handler/LogHandlerUtils$LogType;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lcom/log/handler/LogHandlerUtils$LogType;->$VALUES:[Lcom/log/handler/LogHandlerUtils$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/log/handler/LogHandlerUtils$LogType;->mId:I

    .line 28
    return-void
.end method

.method public static getAllLogTypes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/log/handler/LogHandlerUtils$LogType;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 63
    .local v0, "logTypes":Ljava/util/Set;, "Ljava/util/Set<Lcom/log/handler/LogHandlerUtils$LogType;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    const/4 v2, 0x6

    if-gt v1, v2, :cond_13

    .line 64
    invoke-static {v1}, Lcom/log/handler/LogHandlerUtils$LogType;->getLogTypeById(I)Lcom/log/handler/LogHandlerUtils$LogType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 66
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method public static getLogTypeById(I)Lcom/log/handler/LogHandlerUtils$LogType;
    .registers 2
    .param p0, "logId"    # I

    .line 40
    packed-switch p0, :pswitch_data_18

    .line 54
    sget-object v0, Lcom/log/handler/LogHandlerUtils$LogType;->MOBILE_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    return-object v0

    .line 52
    :pswitch_6
    sget-object v0, Lcom/log/handler/LogHandlerUtils$LogType;->BTHOST_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    return-object v0

    .line 50
    :pswitch_9
    sget-object v0, Lcom/log/handler/LogHandlerUtils$LogType;->GPSHOST_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    return-object v0

    .line 48
    :pswitch_c
    sget-object v0, Lcom/log/handler/LogHandlerUtils$LogType;->CONNSYSFW_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    return-object v0

    .line 46
    :pswitch_f
    sget-object v0, Lcom/log/handler/LogHandlerUtils$LogType;->NETWORK_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    return-object v0

    .line 44
    :pswitch_12
    sget-object v0, Lcom/log/handler/LogHandlerUtils$LogType;->MODEM_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    return-object v0

    .line 42
    :pswitch_15
    sget-object v0, Lcom/log/handler/LogHandlerUtils$LogType;->MOBILE_LOG:Lcom/log/handler/LogHandlerUtils$LogType;

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$LogType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/log/handler/LogHandlerUtils$LogType;

    return-object v0
.end method

.method public static values()[Lcom/log/handler/LogHandlerUtils$LogType;
    .registers 1

    .line 20
    sget-object v0, Lcom/log/handler/LogHandlerUtils$LogType;->$VALUES:[Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-virtual {v0}, [Lcom/log/handler/LogHandlerUtils$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/log/handler/LogHandlerUtils$LogType;

    return-object v0
.end method


# virtual methods
.method public getLogTypeId()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/log/handler/LogHandlerUtils$LogType;->mId:I

    return v0
.end method
