.class public abstract Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RANGING_ERROR_CANNOT_RECEIVE_CASTER_ANSWER:I = 0x1

.field public static final RANGING_ERROR_CANNOT_RECEIVE_SUBSCRIBER_CONFIG:I = 0x5

.field public static final RANGING_ERROR_CONFIRM_FAILED:I = 0x8

.field public static final RANGING_ERROR_GATT_SEND_FAILED:I = 0x7

.field public static final RANGING_ERROR_INVALID_STATUS:I = 0x9

.field public static final RANGING_ERROR_INVALID_UWB_STATUS:I = 0x4

.field public static final RANGING_ERROR_NOT_CONFIRMED:I = 0x3

.field public static final RANGING_ERROR_UWB_SESSION_SETUP_FAILED:I = 0x6

.field public static final RANGING_ERROR_VERSION_NOT_SUPPORTED:I = 0x2

.field public static final RANGING_STATUS_IN_SESSION:I = 0x1

.field public static final RANGING_STATUS_RANGING:I = 0x2

.field public static final RANGING_STATUS_READY:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 4

    const-string v0, ")"

    if-eqz p0, :cond_32

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown("

    :goto_11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RANGING("

    goto :goto_11

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RANGING_IN_SESSION("

    goto :goto_11

    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RANGING_READY("

    goto :goto_11
.end method


# virtual methods
.method public onDataReceived([Lcom/samsung/android/mcf/ranging/McfUWBRangingData;)V
    .registers 2

    return-void
.end method

.method public onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(IILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onStatusError(I)V
    .registers 2

    return-void
.end method

.method public onUWBParamChanged(Ljava/lang/String;[B)V
    .registers 3

    return-void
.end method
