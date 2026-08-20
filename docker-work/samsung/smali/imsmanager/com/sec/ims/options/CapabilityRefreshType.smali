.class public final enum Lcom/sec/ims/options/CapabilityRefreshType;
.super Ljava/lang/Enum;
.source "CapabilityRefreshType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/options/CapabilityRefreshType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum ONLY_IF_EXPIRED:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 12
    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v1, "ONLY_IF_NOT_FRESH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 18
    new-instance v1, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v3, "ONLY_IF_EXPIRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_EXPIRED:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 24
    new-instance v3, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v5, "ALWAYS_FORCE_REFRESH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 30
    new-instance v5, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v7, "ONLY_IF_NOT_FRESH_IN_MSG_CTX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 35
    new-instance v7, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v9, "DISABLED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 41
    new-instance v9, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v11, "FORCE_REFRESH_UCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 47
    new-instance v11, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string v13, "FORCE_REFRESH_SYNC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 7
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sec/ims/options/CapabilityRefreshType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/sec/ims/options/CapabilityRefreshType;->$VALUES:[Lcom/sec/ims/options/CapabilityRefreshType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/options/CapabilityRefreshType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/CapabilityRefreshType;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/options/CapabilityRefreshType;
    .registers 1

    .line 7
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->$VALUES:[Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-virtual {v0}, [Lcom/sec/ims/options/CapabilityRefreshType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/options/CapabilityRefreshType;

    return-object v0
.end method
