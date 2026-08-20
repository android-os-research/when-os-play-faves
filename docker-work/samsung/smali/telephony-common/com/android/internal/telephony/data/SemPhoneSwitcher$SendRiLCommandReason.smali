.class final enum Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;
.super Ljava/lang/Enum;
.source "SemPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/SemPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SendRiLCommandReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

.field public static final enum blacklist MODEM_REQUESTED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

.field public static final enum blacklist NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

.field public static final enum blacklist PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

.field public static final enum blacklist PRIMARY_DATA_PHONEID_CHANGED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 133
    new-instance v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    new-instance v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    const-string v3, "PRIMARY_DATA_CHANGED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->PRIMARY_DATA_CHANGED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    new-instance v3, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    const-string v5, "PRIMARY_DATA_PHONEID_CHANGED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->PRIMARY_DATA_PHONEID_CHANGED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    new-instance v5, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    const-string v7, "MODEM_REQUESTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->MODEM_REQUESTED:Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 132
    sput-object v7, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->$VALUES:[Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;
    .registers 2

    .line 132
    const-class v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;
    .registers 1

    .line 132
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->$VALUES:[Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/SemPhoneSwitcher$SendRiLCommandReason;

    return-object v0
.end method
