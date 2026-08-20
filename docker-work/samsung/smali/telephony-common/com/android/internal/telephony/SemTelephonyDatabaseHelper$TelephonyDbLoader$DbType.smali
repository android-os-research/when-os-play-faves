.class public final enum Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;
.super Ljava/lang/Enum;
.source "SemTelephonyDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DbType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

.field public static final enum blacklist FRAMEWORK:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

.field public static final enum blacklist VENDOR:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 152
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    const-string v1, "FRAMEWORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;->FRAMEWORK:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    new-instance v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    const-string v3, "VENDOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;->VENDOR:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;->$VALUES:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;
    .registers 2

    .line 152
    const-class v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;
    .registers 1

    .line 152
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;->$VALUES:[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    return-object v0
.end method
