.class final Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UidBlockedState"
.end annotation


# static fields
.field public static final ALLOWED_REASONS:[I

.field public static final BLOCKED_REASONS:[I

.field public static final BLOCKED_REASON_FIREWALL_DATA:I = 0x200

.field public static final BLOCKED_REASON_FIREWALL_WIFI:I = 0x100


# instance fields
.field public allowedReasons:I

.field public blockedReasons:I

.field public effectiveBlockedReasons:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 6964
    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    new-array v0, v0, [I

    .line 6979
    fill-array-data v0, :array_2a

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x20
        0x10000
        0x20000
        0x40000
        0x100
        0x200
    .end array-data

    :array_2a
    .array-data 4
        0x1
        0x2
        0x20
        0x4
        0x8
        0x10
        0x40
        0x10000
        0x20000
        0x40000
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 6875
    invoke-direct {p0, v0, v0, v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 6868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6869
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 6870
    iput p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 6871
    iput p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    return-void
.end method

.method public static allowedReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_60

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_57

    const/16 v0, 0x8

    if-eq p0, v0, :cond_54

    const/16 v0, 0x10

    if-eq p0, v0, :cond_51

    const/16 v0, 0x20

    if-eq p0, v0, :cond_4e

    const/16 v0, 0x40

    if-eq p0, v0, :cond_4b

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_48

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_45

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_42

    .line 7049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown allowedReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 7050
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    const-string p0, "METERED_FOREGROUND"

    return-object p0

    :cond_45
    const-string p0, "METERED_SYSTEM"

    return-object p0

    :cond_48
    const-string p0, "METERED_USER_EXEMPTED"

    return-object p0

    :cond_4b
    const-string p0, "LOW_POWER_STANDBY_ALLOWLIST"

    return-object p0

    :cond_4e
    const-string p0, "TOP"

    return-object p0

    :cond_51
    const-string p0, "RESTRICTED_MODE_PERMISSIONS"

    return-object p0

    :cond_54
    const-string p0, "POWER_SAVE_EXCEPT_IDLE_ALLOWLIST"

    return-object p0

    :cond_57
    const-string p0, "POWER_SAVE_ALLOWLIST"

    return-object p0

    :cond_5a
    const-string p0, "FOREGROUND"

    return-object p0

    :cond_5d
    const-string p0, "SYSTEM"

    return-object p0

    :cond_60
    const-string p0, "NONE"

    return-object p0
.end method

.method public static allowedReasonsToString(I)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 7076
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7078
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7079
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    array-length v3, v2

    :goto_10
    const-string v4, ""

    const-string/jumbo v5, "|"

    if-ge v0, v3, :cond_34

    aget v6, v2, v0

    and-int v7, p0, v6

    if-eqz v7, :cond_31

    .line 7081
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_24

    goto :goto_25

    :cond_24
    move-object v4, v5

    :goto_25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7082
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v4, v6

    and-int/2addr p0, v4

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_34
    if-eqz p0, :cond_5e

    .line 7087
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v4, v5

    :goto_3e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7088
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown allowedReasons: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 7091
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blockedReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_60

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_57

    const/16 v0, 0x8

    if-eq p0, v0, :cond_54

    const/16 v0, 0x20

    if-eq p0, v0, :cond_51

    const/16 v0, 0x100

    if-eq p0, v0, :cond_4e

    const/16 v0, 0x200

    if-eq p0, v0, :cond_4b

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_48

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_45

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_42

    .line 7019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown blockedReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 7020
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    const-string p0, "METERED_ADMIN_DISABLED"

    return-object p0

    :cond_45
    const-string p0, "METERED_USER_RESTRICTED"

    return-object p0

    :cond_48
    const-string p0, "DATA_SAVER"

    return-object p0

    :cond_4b
    const-string p0, "FIREWALL_DATA"

    return-object p0

    :cond_4e
    const-string p0, "FIREWALL_WIFI"

    return-object p0

    :cond_51
    const-string p0, "LOW_POWER_STANDBY"

    return-object p0

    :cond_54
    const-string p0, "RESTRICTED_MODE"

    return-object p0

    :cond_57
    const-string p0, "APP_STANDBY"

    return-object p0

    :cond_5a
    const-string p0, "DOZE"

    return-object p0

    :cond_5d
    const-string p0, "BATTERY_SAVER"

    return-object p0

    :cond_60
    const-string p0, "NONE"

    return-object p0
.end method

.method public static blockedReasonsToString(I)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 7056
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7058
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7059
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    array-length v3, v2

    :goto_10
    const-string v4, ""

    const-string/jumbo v5, "|"

    if-ge v0, v3, :cond_34

    aget v6, v2, v0

    and-int v7, p0, v6

    if-eqz v7, :cond_31

    .line 7061
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_24

    goto :goto_25

    :cond_24
    move-object v4, v5

    :goto_25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7062
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v4, v6

    and-int/2addr p0, v4

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_34
    if-eqz p0, :cond_5e

    .line 7067
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v4, v5

    :goto_3e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7068
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown blockedReasons: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 7071
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAllowedReasonsForProcState(I)I
    .registers 2

    const/4 v0, 0x5

    if-le p0, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 v0, 0x3

    if-gt p0, v0, :cond_c

    const p0, 0x40022

    return p0

    :cond_c
    const p0, 0x40002

    return p0
.end method

.method public static getEffectiveBlockedReasons(II)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_3

    return p0

    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    :cond_a
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_13

    const v0, 0xffff

    and-int/2addr p0, v0

    :cond_13
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1d

    and-int/lit8 p0, p0, -0x2

    and-int/lit8 p0, p0, -0x3

    and-int/lit8 p0, p0, -0x5

    :cond_1d
    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    const v1, -0x10001

    if-eqz v0, :cond_2a

    and-int/2addr p0, v1

    const v0, -0x20001

    and-int/2addr p0, v0

    :cond_2a
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_30

    and-int/lit8 p0, p0, -0x21

    :cond_30
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3a

    and-int/lit8 p0, p0, -0x2

    and-int/lit8 p0, p0, -0x3

    and-int/lit8 p0, p0, -0x5

    :cond_3a
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_42

    and-int/lit8 p0, p0, -0x2

    and-int/lit8 p0, p0, -0x5

    :cond_42
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_48

    and-int/lit8 p0, p0, -0x9

    :cond_48
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_4e

    and-int/2addr p0, v1

    :cond_4e
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_54

    and-int/lit8 p0, p0, -0x21

    :cond_54
    return p0
.end method

.method public static toString(III)Ljava/lang/String;
    .registers 5

    .line 6955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 6956
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "blocked="

    .line 6957
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "allowed="

    .line 6958
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonsToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "effective="

    .line 6959
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 6960
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6961
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V
    .registers 3

    .line 7095
    iget v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 7096
    iget v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 7097
    iget p1, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    return-void
.end method

.method public deriveUidRules()I
    .registers 5

    .line 7102
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_9

    const/16 v1, 0x400

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    and-int/lit8 v2, v0, 0x27

    if-eqz v2, :cond_11

    or-int/lit8 v1, v1, 0x40

    goto :goto_19

    .line 7112
    :cond_11
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    and-int/lit8 v2, v2, 0x27

    if-eqz v2, :cond_19

    or-int/lit8 v1, v1, 0x20

    :cond_19
    :goto_19
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_1f

    or-int/lit8 v1, v1, 0x40

    :cond_1f
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_25

    or-int/lit8 v1, v1, 0x40

    :cond_25
    const/high16 v2, 0x60000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2d

    or-int/lit8 v1, v1, 0x4

    goto :goto_4f

    .line 7129
    :cond_2d
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    const/high16 v3, 0x40000

    if-eqz v2, :cond_3e

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3e

    :goto_3b
    or-int/lit8 v1, v1, 0x2

    goto :goto_4f

    :cond_3e
    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_4f

    .line 7133
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_4b

    or-int/lit8 v1, v1, 0x20

    goto :goto_4f

    :cond_4b
    and-int/2addr v0, v3

    if-eqz v0, :cond_4f

    goto :goto_3b

    .line 7139
    :cond_4f
    :goto_4f
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 7140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uidBlockedState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " -> uidRule="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7141
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkPolicy"

    .line 7140
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 6950
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-static {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateEffectiveBlockedReasons()V
    .registers 4

    .line 6879
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v0

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    if-nez v0, :cond_12

    const-string/jumbo v0, "updateEffectiveBlockedReasons(): no blocked reasons"

    .line 6880
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6882
    :cond_12
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    invoke-static {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->getEffectiveBlockedReasons(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6883
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 6884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEffectiveBlockedReasons(): blockedReasons="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 6885
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effectiveReasons="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6886
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6884
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return-void
.end method
