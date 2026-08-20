.class final enum Lcom/android/internal/telephony/cat/CallControlResult;
.super Ljava/lang/Enum;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/CallControlResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/CallControlResult;

.field public static final enum blacklist CALL_CONTROL_ALLOWED_NO_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

.field public static final enum blacklist CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

.field public static final enum blacklist CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

.field public static final enum blacklist CALL_CONTROL_NO_CONTROL:Lcom/android/internal/telephony/cat/CallControlResult;


# instance fields
.field private blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 177
    new-instance v0, Lcom/android/internal/telephony/cat/CallControlResult;

    const-string v1, "CALL_CONTROL_NO_CONTROL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NO_CONTROL:Lcom/android/internal/telephony/cat/CallControlResult;

    .line 178
    new-instance v1, Lcom/android/internal/telephony/cat/CallControlResult;

    const-string v3, "CALL_CONTROL_ALLOWED_NO_MOD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/internal/telephony/cat/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_NO_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    .line 179
    new-instance v3, Lcom/android/internal/telephony/cat/CallControlResult;

    const-string v5, "CALL_CONTROL_NOT_ALLOWED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/internal/telephony/cat/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    .line 180
    new-instance v5, Lcom/android/internal/telephony/cat/CallControlResult;

    const-string v7, "CALL_CONTROL_ALLOWED_WITH_MOD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/internal/telephony/cat/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/internal/telephony/cat/CallControlResult;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 176
    sput-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->$VALUES:[Lcom/android/internal/telephony/cat/CallControlResult;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 185
    iput p3, p0, Lcom/android/internal/telephony/cat/CallControlResult;->mValue:I

    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;
    .registers 6

    .line 198
    invoke-static {}, Lcom/android/internal/telephony/cat/CallControlResult;->values()[Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 199
    iget v4, v3, Lcom/android/internal/telephony/cat/CallControlResult;->mValue:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/CallControlResult;
    .registers 2

    .line 176
    const-class v0, Lcom/android/internal/telephony/cat/CallControlResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/CallControlResult;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/CallControlResult;
    .registers 1

    .line 176
    sget-object v0, Lcom/android/internal/telephony/cat/CallControlResult;->$VALUES:[Lcom/android/internal/telephony/cat/CallControlResult;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/CallControlResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/CallControlResult;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .registers 1

    .line 194
    iget p0, p0, Lcom/android/internal/telephony/cat/CallControlResult;->mValue:I

    return p0
.end method
