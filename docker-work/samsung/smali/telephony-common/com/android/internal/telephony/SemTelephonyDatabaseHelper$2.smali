.class synthetic Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$2;
.super Ljava/lang/Object;
.source "SemTelephonyDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 161
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;->values()[Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$2;->$SwitchMap$com$android$internal$telephony$SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType:[I

    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;->FRAMEWORK:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
