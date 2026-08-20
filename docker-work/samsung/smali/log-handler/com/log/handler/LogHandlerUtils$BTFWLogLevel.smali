.class public final enum Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;
.super Ljava/lang/Enum;
.source "LogHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/LogHandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BTFWLogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

.field public static final enum DEBUG:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

.field public static final enum LOW_POWER:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

.field public static final enum OFF:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

.field public static final enum SQC:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;


# instance fields
.field private mID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 338
    new-instance v0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    const-string v1, "OFF"

    const/4 v2, 0x0

    const-string v3, "0"

    invoke-direct {v0, v1, v2, v3}, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->OFF:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    new-instance v1, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    const-string v3, "LOW_POWER"

    const/4 v4, 0x1

    const-string v5, "1"

    invoke-direct {v1, v3, v4, v5}, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->LOW_POWER:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    new-instance v3, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    const-string v5, "SQC"

    const/4 v6, 0x2

    const-string v7, "2"

    invoke-direct {v3, v5, v6, v7}, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->SQC:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    new-instance v5, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    const-string v7, "DEBUG"

    const/4 v8, 0x3

    const-string v9, "3"

    invoke-direct {v5, v7, v8, v9}, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->DEBUG:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    .line 337
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->$VALUES:[Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

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

    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 342
    iput-object p3, p0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->mID:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public static getBTFWLogLevelByID(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    :cond_7
    goto :goto_30

    :pswitch_8
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_31

    :pswitch_12
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_31

    :pswitch_1c
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_31

    :pswitch_26
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_31

    :goto_30
    const/4 v0, -0x1

    :goto_31
    packed-switch v0, :pswitch_data_50

    .line 361
    sget-object v0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->SQC:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    return-object v0

    .line 359
    :pswitch_37
    sget-object v0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->DEBUG:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    return-object v0

    .line 357
    :pswitch_3a
    sget-object v0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->SQC:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    return-object v0

    .line 355
    :pswitch_3d
    sget-object v0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->LOW_POWER:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    return-object v0

    .line 353
    :pswitch_40
    sget-object v0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->OFF:Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    return-object v0

    nop

    :pswitch_data_44
    .packed-switch 0x30
        :pswitch_26
        :pswitch_1c
        :pswitch_12
        :pswitch_8
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 337
    const-class v0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;
    .registers 1

    .line 337
    sget-object v0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->$VALUES:[Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    invoke-virtual {v0}, [Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;->mID:Ljava/lang/String;

    return-object v0
.end method
