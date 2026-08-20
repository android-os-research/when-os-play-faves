.class synthetic Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$1;
.super Ljava/lang/Object;
.source "SemTelephonyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 253
    invoke-static {}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->values()[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$1;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    :try_start_9
    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    invoke-virtual {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$1;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    sget-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    invoke-virtual {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
