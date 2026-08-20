.class public Lcom/android/server/enterprise/utils/NetdHelper;
.super Ljava/lang/Object;
.source "NetdHelper.java"


# static fields
.field public static CMD_DELIMITER:Ljava/lang/String; = null

.field public static CMD_INVALID:I = 0x0

.field public static CMD_PATH:Ljava/lang/String; = null

.field public static final IP6ROUTE:I = 0x3

.field public static final IP6RULE:I = 0x1

.field public static final IPROUTE:I = 0x2

.field public static final IPRULE:I = 0x0

.field public static final MAX_CMDS:I = 0x3

.field public static PARAM_DELIMITER:Ljava/lang/String;

.field public static final allowedCommands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 42
    invoke-static {}, Lcom/android/server/enterprise/utils/NetdHelper;->initMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->allowedCommands:Ljava/util/Map;

    const/4 v0, -0x1

    .line 54
    sput v0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_INVALID:I

    const-string v0, ";"

    .line 56
    sput-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_DELIMITER:Ljava/lang/String;

    const-string v0, "\\s+"

    .line 57
    sput-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->PARAM_DELIMITER:Ljava/lang/String;

    const-string v0, "/system/bin/"

    .line 58
    sput-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCmdNumber(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    if-eqz p0, :cond_3d

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 79
    sget-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_PATH:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 81
    sget-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->allowedCommands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 86
    :cond_3d
    sget p0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_INVALID:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getCmdParams(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3a

    .line 98
    :cond_a
    invoke-static {p0}, Lcom/android/server/enterprise/utils/NetdHelper;->getCmdNumber(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 99
    sget v2, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_INVALID:I

    if-ne v1, v2, :cond_17

    return-object v0

    .line 104
    :cond_17
    sget-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_PATH:Ljava/lang/String;

    const-string v2, ""

    .line 105
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->allowedCommands:Ljava/util/Map;

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->PARAM_DELIMITER:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    :goto_3a
    return-object v0
.end method

.method public static initMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ip rule"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ip -6 rule"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ip route"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ip -6 route"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static splitCmds(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_DELIMITER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method
