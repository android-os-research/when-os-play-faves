.class final enum Lcom/android/internal/telephony/cat/CallType;
.super Ljava/lang/Enum;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/CallType;

.field public static final enum blacklist CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/cat/CallType;

.field public static final enum blacklist CALL_TYPE_MO_SS:Lcom/android/internal/telephony/cat/CallType;

.field public static final enum blacklist CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/cat/CallType;

.field public static final enum blacklist CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

.field public static final enum blacklist CALL_TYPE_PDP_CTXT:Lcom/android/internal/telephony/cat/CallType;


# instance fields
.field private blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 209
    new-instance v0, Lcom/android/internal/telephony/cat/CallType;

    const-string v1, "CALL_TYPE_MO_VOICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    .line 210
    new-instance v1, Lcom/android/internal/telephony/cat/CallType;

    const-string v3, "CALL_TYPE_MO_SMS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/internal/telephony/cat/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/cat/CallType;

    .line 211
    new-instance v3, Lcom/android/internal/telephony/cat/CallType;

    const-string v5, "CALL_TYPE_MO_SS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/internal/telephony/cat/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/cat/CallType;

    .line 212
    new-instance v5, Lcom/android/internal/telephony/cat/CallType;

    const-string v7, "CALL_TYPE_MO_USSD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/internal/telephony/cat/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/cat/CallType;

    .line 213
    new-instance v7, Lcom/android/internal/telephony/cat/CallType;

    const-string v9, "CALL_TYPE_PDP_CTXT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/internal/telephony/cat/CallType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_PDP_CTXT:Lcom/android/internal/telephony/cat/CallType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/internal/telephony/cat/CallType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 208
    sput-object v9, Lcom/android/internal/telephony/cat/CallType;->$VALUES:[Lcom/android/internal/telephony/cat/CallType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 218
    iput p3, p0, Lcom/android/internal/telephony/cat/CallType;->mValue:I

    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/telephony/cat/CallType;
    .registers 6

    .line 231
    invoke-static {}, Lcom/android/internal/telephony/cat/CallType;->values()[Lcom/android/internal/telephony/cat/CallType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 232
    iget v4, v3, Lcom/android/internal/telephony/cat/CallType;->mValue:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 236
    :cond_12
    sget-object p0, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/CallType;
    .registers 2

    .line 208
    const-class v0, Lcom/android/internal/telephony/cat/CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/CallType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/CallType;
    .registers 1

    .line 208
    sget-object v0, Lcom/android/internal/telephony/cat/CallType;->$VALUES:[Lcom/android/internal/telephony/cat/CallType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/CallType;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .registers 1

    .line 227
    iget p0, p0, Lcom/android/internal/telephony/cat/CallType;->mValue:I

    return p0
.end method
