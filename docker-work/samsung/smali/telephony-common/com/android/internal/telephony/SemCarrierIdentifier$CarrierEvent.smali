.class final enum Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;
.super Ljava/lang/Enum;
.source "SemCarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemCarrierIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CarrierEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

.field public static final enum blacklist ICC_CHANGED_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

.field public static final enum blacklist INVALID_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

.field public static final enum blacklist PREFER_APN_UPDATE_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

.field public static final enum blacklist SIM_ABSENT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

.field public static final enum blacklist SIM_INIT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

.field public static final enum blacklist SIM_LOAD_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;


# instance fields
.field private blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 14

    .line 363
    new-instance v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const-string v1, "SIM_INIT_EVENT"

    const/4 v2, 0x0

    const v3, 0x2e8ec

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_INIT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 364
    new-instance v1, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const-string v3, "SIM_LOAD_EVENT"

    const/4 v4, 0x1

    const v5, 0x2e8ed

    invoke-direct {v1, v3, v4, v5}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_LOAD_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 365
    new-instance v3, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const-string v5, "SIM_ABSENT_EVENT"

    const/4 v6, 0x2

    const v7, 0x2e8ee

    invoke-direct {v3, v5, v6, v7}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_ABSENT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 366
    new-instance v5, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const-string v7, "ICC_CHANGED_EVENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->ICC_CHANGED_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 367
    new-instance v7, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const-string v9, "PREFER_APN_UPDATE_EVENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->PREFER_APN_UPDATE_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 368
    new-instance v9, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const-string v11, "INVALID_EVENT"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->INVALID_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 361
    sput-object v11, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->$VALUES:[Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 372
    iput p3, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->value:I

    return-void
.end method

.method static blacklist from(I)Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;
    .registers 7

    .line 380
    sget-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->INVALID_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    .line 381
    invoke-static {}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->values()[Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 382
    invoke-virtual {v4}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->getValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p0, v5, :cond_18

    move-object v0, v4

    goto :goto_1b

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;
    .registers 2

    .line 361
    const-class v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;
    .registers 1

    .line 361
    sget-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->$VALUES:[Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    return-object v0
.end method


# virtual methods
.method blacklist getValue()Ljava/lang/Integer;
    .registers 1

    .line 376
    iget p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
