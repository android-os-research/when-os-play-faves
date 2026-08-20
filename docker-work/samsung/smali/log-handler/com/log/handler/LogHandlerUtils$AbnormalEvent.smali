.class public final enum Lcom/log/handler/LogHandlerUtils$AbnormalEvent;
.super Ljava/lang/Enum;
.source "LogHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/log/handler/LogHandlerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AbnormalEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/log/handler/LogHandlerUtils$AbnormalEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

.field public static final enum DISCONNECT:Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

.field public static final enum LOG_FILE_LOST:Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

.field public static final enum STORAGE_FULL:Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

.field public static final enum WRITE_FILE_FAILED:Lcom/log/handler/LogHandlerUtils$AbnormalEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 433
    new-instance v0, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    const-string v1, "DISCONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;->DISCONNECT:Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    new-instance v1, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    const-string v3, "STORAGE_FULL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;->STORAGE_FULL:Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    new-instance v3, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    const-string v5, "LOG_FILE_LOST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;->LOG_FILE_LOST:Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    new-instance v5, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    const-string v7, "WRITE_FILE_FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;->WRITE_FILE_FAILED:Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    .line 432
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;->$VALUES:[Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 432
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/log/handler/LogHandlerUtils$AbnormalEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 432
    const-class v0, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    return-object v0
.end method

.method public static values()[Lcom/log/handler/LogHandlerUtils$AbnormalEvent;
    .registers 1

    .line 432
    sget-object v0, Lcom/log/handler/LogHandlerUtils$AbnormalEvent;->$VALUES:[Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    invoke-virtual {v0}, [Lcom/log/handler/LogHandlerUtils$AbnormalEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/log/handler/LogHandlerUtils$AbnormalEvent;

    return-object v0
.end method
