.class public final enum Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;
.super Ljava/lang/Enum;
.source "SemPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DelayReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

.field public static final enum blacklist NETWORK_MODE_CHANGING:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

.field public static final enum blacklist NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

.field public static final enum blacklist PDN_DISCONNECTING:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 1283
    new-instance v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;->NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    new-instance v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    const-string v3, "PDN_DISCONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;->PDN_DISCONNECTING:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    new-instance v3, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    const-string v5, "NETWORK_MODE_CHANGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;->NETWORK_MODE_CHANGING:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1282
    sput-object v5, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;->$VALUES:[Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1282
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;
    .registers 2

    .line 1282
    const-class v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;
    .registers 1

    .line 1282
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;->$VALUES:[Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    return-object v0
.end method
