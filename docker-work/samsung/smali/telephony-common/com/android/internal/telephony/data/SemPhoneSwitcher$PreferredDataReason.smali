.class final enum Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;
.super Ljava/lang/Enum;
.source "SemPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/SemPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PreferredDataReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

.field public static final enum blacklist AUTODDS:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

.field public static final enum blacklist CROSSSIMCALLING:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

.field public static final enum blacklist EMERGENCY:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

.field public static final enum blacklist NOCARD:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

.field public static final enum blacklist OPPORTUNISTIC:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

.field public static final enum blacklist PRIMARYDATA:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

.field public static final enum blacklist REQUEST:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

.field public static final enum blacklist VOICECALL:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 141
    new-instance v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    const-string v1, "NOCARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->NOCARD:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    new-instance v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    const-string v3, "EMERGENCY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->EMERGENCY:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    new-instance v3, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    const-string v5, "VOICECALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->VOICECALL:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    new-instance v5, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    const-string v7, "REQUEST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->REQUEST:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    new-instance v7, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    const-string v9, "OPPORTUNISTIC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->OPPORTUNISTIC:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    new-instance v9, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    const-string v11, "PRIMARYDATA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->PRIMARYDATA:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    new-instance v11, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    const-string v13, "AUTODDS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->AUTODDS:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    new-instance v13, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    const-string v15, "CROSSSIMCALLING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->CROSSSIMCALLING:Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 140
    sput-object v15, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->$VALUES:[Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;
    .registers 2

    .line 140
    const-class v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;
    .registers 1

    .line 140
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->$VALUES:[Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/SemPhoneSwitcher$PreferredDataReason;

    return-object v0
.end method
