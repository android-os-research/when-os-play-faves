.class public Lcom/android/server/audio/UuidUtils;
.super Ljava/lang/Object;
.source "UuidUtils.java"


# static fields
.field public static final LSB_PREFIX_BT:J = 0x4254000000000000L

.field public static final LSB_PREFIX_MASK:J = -0x1000000000000L

.field public static final LSB_SUFFIX_MASK:J = 0xffffffffffffL

.field public static final STANDALONE_UUID:Ljava/util/UUID;

.field public static final TAG:Ljava/lang/String; = "AudioService.UuidUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/android/server/audio/UuidUtils;->STANDALONE_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uuidFromAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;)Ljava/util/UUID;
    .registers 5

    .line 48
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_a

    return-object v1

    .line 50
    :cond_a
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1f

    return-object v1

    .line 54
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/high16 v2, 0x4254000000000000L    # 3.4359738368E11

    .line 57
    :try_start_32
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_3a} :catch_5e

    or-long/2addr v0, v2

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uuidFromAudioDeviceAttributes lsb: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AudioService.UuidUtils"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p0, Ljava/util/UUID;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0

    :catch_5e
    return-object v1
.end method
