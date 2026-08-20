.class final enum Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;
.super Ljava/lang/Enum;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

.field public static final enum blacklist SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

.field public static final enum blacklist SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

.field public static final enum blacklist SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

.field public static final enum blacklist SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

.field public static final enum blacklist SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

.field public static final enum blacklist SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;


# instance fields
.field private blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 144
    new-instance v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v1, "SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    .line 145
    new-instance v1, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v3, "SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL_WITH_REDIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    .line 146
    new-instance v3, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v5, "SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    .line 147
    new-instance v5, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v7, "SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD_WITH_REDIAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    .line 148
    new-instance v7, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v9, "SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    .line 149
    new-instance v9, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const-string v11, "SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS_WITH_REDIAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS_WITH_REDIAL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 143
    sput-object v11, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->$VALUES:[Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput p3, p0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->mValue:I

    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;
    .registers 6

    .line 167
    invoke-static {}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->values()[Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 168
    iget v4, v3, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->mValue:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;
    .registers 2

    .line 143
    const-class v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;
    .registers 1

    .line 143
    sget-object v0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->$VALUES:[Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .registers 1

    .line 163
    iget p0, p0, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->mValue:I

    return p0
.end method
