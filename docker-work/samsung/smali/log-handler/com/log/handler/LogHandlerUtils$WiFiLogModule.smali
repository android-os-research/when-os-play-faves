.class public final enum Lcom/log/handler/LogHandlerUtils$WiFiLogModule;
.super Ljava/lang/Enum;
.source "LogHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/LogHandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WiFiLogModule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/log/handler/LogHandlerUtils$WiFiLogModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/log/handler/LogHandlerUtils$WiFiLogModule;

.field public static final enum DRIVER:Lcom/log/handler/LogHandlerUtils$WiFiLogModule;

.field public static final enum FIRMWARE:Lcom/log/handler/LogHandlerUtils$WiFiLogModule;


# instance fields
.field private mModule:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 115
    new-instance v0, Lcom/log/handler/LogHandlerUtils$WiFiLogModule;

    const-string v1, "DRIVER"

    const/4 v2, 0x0

    const-string v3, "0"

    invoke-direct {v0, v1, v2, v3}, Lcom/log/handler/LogHandlerUtils$WiFiLogModule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/log/handler/LogHandlerUtils$WiFiLogModule;->DRIVER:Lcom/log/handler/LogHandlerUtils$WiFiLogModule;

    new-instance v1, Lcom/log/handler/LogHandlerUtils$WiFiLogModule;

    const-string v3, "FIRMWARE"

    const/4 v4, 0x1

    const-string v5, "1"

    invoke-direct {v1, v3, v4, v5}, Lcom/log/handler/LogHandlerUtils$WiFiLogModule;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/log/handler/LogHandlerUtils$WiFiLogModule;->FIRMWARE:Lcom/log/handler/LogHandlerUtils$WiFiLogModule;

    .line 114
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/log/handler/LogHandlerUtils$WiFiLogModule;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/log/handler/LogHandlerUtils$WiFiLogModule;->$VALUES:[Lcom/log/handler/LogHandlerUtils$WiFiLogModule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput-object p3, p0, Lcom/log/handler/LogHandlerUtils$WiFiLogModule;->mModule:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$WiFiLogModule;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 114
    const-class v0, Lcom/log/handler/LogHandlerUtils$WiFiLogModule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/log/handler/LogHandlerUtils$WiFiLogModule;

    return-object v0
.end method

.method public static values()[Lcom/log/handler/LogHandlerUtils$WiFiLogModule;
    .registers 1

    .line 114
    sget-object v0, Lcom/log/handler/LogHandlerUtils$WiFiLogModule;->$VALUES:[Lcom/log/handler/LogHandlerUtils$WiFiLogModule;

    invoke-virtual {v0}, [Lcom/log/handler/LogHandlerUtils$WiFiLogModule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/log/handler/LogHandlerUtils$WiFiLogModule;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/log/handler/LogHandlerUtils$WiFiLogModule;->mModule:Ljava/lang/String;

    return-object v0
.end method
