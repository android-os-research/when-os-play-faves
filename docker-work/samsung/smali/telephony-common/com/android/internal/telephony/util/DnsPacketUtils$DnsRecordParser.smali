.class public Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;
.super Ljava/lang/Object;
.source "DnsPacketUtils.java"


# static fields
.field private static final blacklist sByteFormat:Ljava/text/DecimalFormat;

.field private static final blacklist sPos:Ljava/text/FieldPosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->sByteFormat:Ljava/text/DecimalFormat;

    .line 44
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->sPos:Ljava/text/FieldPosition;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist labelToString([B)Ljava/lang/String;
    .registers 7

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 54
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_54

    .line 55
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    const/16 v3, 0x20

    const/16 v4, 0x5c

    if-le v2, v3, :cond_46

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1a

    goto :goto_46

    :cond_1a
    const/16 v3, 0x22

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_3e

    if-eq v2, v4, :cond_3e

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x29

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x40

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x24

    if-ne v2, v3, :cond_39

    goto :goto_3e

    :cond_39
    int-to-char v2, v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_51

    .line 64
    :cond_3e
    :goto_3e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v2, v2

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_51

    .line 59
    :cond_46
    :goto_46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    sget-object v3, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->sByteFormat:Ljava/text/DecimalFormat;

    int-to-long v4, v2

    sget-object v2, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->sPos:Ljava/text/FieldPosition;

    invoke-virtual {v3, v4, v5, v0, v2}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 71
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    const/16 v0, 0x80

    if-gt p1, v0, :cond_9c

    .line 88
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-nez v0, :cond_13

    const-string p0, ""

    return-object p0

    :cond_13
    const/16 v2, 0xc0

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_1e

    :cond_19
    if-nez p2, :cond_35

    if-eq v1, v2, :cond_1e

    goto :goto_35

    .line 94
    :cond_1e
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Parse name fail, bad label type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    :goto_35
    if-ne v1, v2, :cond_61

    and-int/lit16 v0, v0, -0xc1

    shl-int/lit8 v0, v0, 0x8

    .line 97
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    if-ge v0, v2, :cond_59

    .line 103
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 p1, p1, 0x1

    .line 104
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    .line 100
    :cond_59
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string p1, "Parse compression name fail, invalid compression"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_61
    new-array v0, v0, [B

    .line 109
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 110
    invoke-static {v0}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->labelToString([B)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_94

    add-int/lit8 p1, p1, 0x1

    .line 114
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7f

    goto :goto_93

    :cond_7f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_93
    return-object v0

    .line 112
    :cond_94
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string p1, "Parse name fail, invalid label length"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_9c
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string p1, "Failed to parse name, too many labels"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
