.class public final enum Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;
.super Ljava/lang/Enum;
.source "SemPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

.field public static final enum blacklist NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

.field public static final enum blacklist OVERRIDE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

.field public static final enum blacklist RESTORE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 1280
    new-instance v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    new-instance v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    const-string v3, "OVERRIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->OVERRIDE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    new-instance v3, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    const-string v5, "RESTORE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->RESTORE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1279
    sput-object v5, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->$VALUES:[Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;
    .registers 2

    .line 1279
    const-class v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;
    .registers 1

    .line 1279
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->$VALUES:[Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    return-object v0
.end method
