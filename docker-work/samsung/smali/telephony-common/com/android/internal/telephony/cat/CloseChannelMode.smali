.class public final enum Lcom/android/internal/telephony/cat/CloseChannelMode;
.super Ljava/lang/Enum;
.source "CloseChannelMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/CloseChannelMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/CloseChannelMode;

.field public static final enum blacklist CLOSE_TCP_AND_TCP_IN_CLOSED_STATE:Lcom/android/internal/telephony/cat/CloseChannelMode;

.field public static final enum blacklist CLOSE_TCP_AND_TCP_IN_LISTEN_STATE:Lcom/android/internal/telephony/cat/CloseChannelMode;


# instance fields
.field private blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/CloseChannelMode;

    const-string v1, "CLOSE_TCP_AND_TCP_IN_CLOSED_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CloseChannelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CloseChannelMode;->CLOSE_TCP_AND_TCP_IN_CLOSED_STATE:Lcom/android/internal/telephony/cat/CloseChannelMode;

    .line 34
    new-instance v1, Lcom/android/internal/telephony/cat/CloseChannelMode;

    const-string v3, "CLOSE_TCP_AND_TCP_IN_LISTEN_STATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/internal/telephony/cat/CloseChannelMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/internal/telephony/cat/CloseChannelMode;->CLOSE_TCP_AND_TCP_IN_LISTEN_STATE:Lcom/android/internal/telephony/cat/CloseChannelMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/internal/telephony/cat/CloseChannelMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 25
    sput-object v3, Lcom/android/internal/telephony/cat/CloseChannelMode;->$VALUES:[Lcom/android/internal/telephony/cat/CloseChannelMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/android/internal/telephony/cat/CloseChannelMode;->mValue:I

    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/telephony/cat/CloseChannelMode;
    .registers 6

    .line 47
    invoke-static {}, Lcom/android/internal/telephony/cat/CloseChannelMode;->values()[Lcom/android/internal/telephony/cat/CloseChannelMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 48
    iget v4, v3, Lcom/android/internal/telephony/cat/CloseChannelMode;->mValue:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/CloseChannelMode;
    .registers 2

    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/CloseChannelMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/CloseChannelMode;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/CloseChannelMode;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/CloseChannelMode;->$VALUES:[Lcom/android/internal/telephony/cat/CloseChannelMode;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/CloseChannelMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/CloseChannelMode;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .registers 1

    .line 43
    iget p0, p0, Lcom/android/internal/telephony/cat/CloseChannelMode;->mValue:I

    return p0
.end method
