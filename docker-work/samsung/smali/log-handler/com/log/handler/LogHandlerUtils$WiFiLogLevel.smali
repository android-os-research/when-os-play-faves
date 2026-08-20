.class public final enum Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;
.super Ljava/lang/Enum;
.source "LogHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/LogHandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WiFiLogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

.field public static final enum DEFAULT:Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

.field public static final enum EXTREME:Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

.field public static final enum MORE:Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;


# instance fields
.field private mID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 134
    new-instance v0, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const-string v3, "0"

    invoke-direct {v0, v1, v2, v3}, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->DEFAULT:Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    new-instance v1, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    const-string v3, "MORE"

    const/4 v4, 0x1

    const-string v5, "1"

    invoke-direct {v1, v3, v4, v5}, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->MORE:Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    new-instance v3, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    const-string v5, "EXTREME"

    const/4 v6, 0x2

    const-string v7, "2"

    invoke-direct {v3, v5, v6, v7}, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->EXTREME:Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    .line 133
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->$VALUES:[Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

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

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput-object p3, p0, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->mID:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public static getWiFiLogLevelByID(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 147
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

    .line 155
    sget-object v0, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->DEFAULT:Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    return-object v0

    .line 153
    :pswitch_2d
    sget-object v0, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->EXTREME:Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    return-object v0

    .line 151
    :pswitch_30
    sget-object v0, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->MORE:Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    return-object v0

    .line 149
    :pswitch_33
    sget-object v0, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->DEFAULT:Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 133
    const-class v0, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;
    .registers 1

    .line 133
    sget-object v0, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->$VALUES:[Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    invoke-virtual {v0}, [Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;->mID:Ljava/lang/String;

    return-object v0
.end method
