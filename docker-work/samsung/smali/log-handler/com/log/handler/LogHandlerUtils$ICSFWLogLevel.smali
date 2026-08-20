.class public final enum Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;
.super Ljava/lang/Enum;
.source "LogHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/LogHandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICSFWLogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

.field public static final enum DISABLE:Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

.field public static final enum MAC_ICS:Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

.field public static final enum PHY_ICS:Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;


# instance fields
.field private mID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 375
    new-instance v0, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    const-string v1, "DISABLE"

    const/4 v2, 0x0

    const-string v3, "0"

    invoke-direct {v0, v1, v2, v3}, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;->DISABLE:Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    new-instance v1, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    const-string v3, "MAC_ICS"

    const/4 v4, 0x1

    const-string v5, "1"

    invoke-direct {v1, v3, v4, v5}, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;->MAC_ICS:Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    new-instance v3, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    const-string v5, "PHY_ICS"

    const/4 v6, 0x2

    const-string v7, "2"

    invoke-direct {v3, v5, v6, v7}, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;->PHY_ICS:Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    .line 374
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;->$VALUES:[Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "logLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 378
    iput-object p3, p0, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;->mID:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public static getICSFWLogLevelByID(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 387
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    :cond_7
    goto :goto_26

    :pswitch_8
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_27

    :pswitch_12
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_27

    :pswitch_1c
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_27

    :goto_26
    const/4 v0, -0x1

    :goto_27
    packed-switch v0, :pswitch_data_40

    .line 395
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;->DISABLE:Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    return-object v0

    .line 393
    :pswitch_2d
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;->PHY_ICS:Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    return-object v0

    .line 391
    :pswitch_30
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;->MAC_ICS:Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    return-object v0

    .line 389
    :pswitch_33
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;->DISABLE:Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    return-object v0

    :pswitch_data_36
    .packed-switch 0x30
        :pswitch_1c
        :pswitch_12
        :pswitch_8
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_33
        :pswitch_30
        :pswitch_2d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 374
    const-class v0, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;
    .registers 1

    .line 374
    sget-object v0, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;->$VALUES:[Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    invoke-virtual {v0}, [Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;->mID:Ljava/lang/String;

    return-object v0
.end method
