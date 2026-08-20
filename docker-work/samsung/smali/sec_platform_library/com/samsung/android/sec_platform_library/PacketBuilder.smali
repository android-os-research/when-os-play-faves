.class public Lcom/samsung/android/sec_platform_library/PacketBuilder;
.super Ljava/lang/Object;
.source "PacketBuilder.java"


# static fields
.field public static final OEM_CFG_EXEC_DEFAULT:B = 0x1t

.field public static final OEM_CFG_SET_DEVICE_MAC_ADDRESS:B = 0x30t

.field public static final OEM_FUNCTION_ID_CONFIGURATION:B = 0xct

.field public static final OEM_FUNCTION_ID_FACTORY:B = 0x12t

.field public static final OEM_FUNCTION_ID_IMEI:B = 0x6t

.field public static final OEM_FUNCTION_ID_SYSDUMP:B = 0x7t

.field public static final OEM_IMEI_EVENT_START_IMEI:B = 0x5t

.field public static final OEM_IMEI_EVENT_VERIFY_COMPARE:B = 0x6t

.field public static final OEM_IMEI_SET_PRECONFIGURAION:B = 0x1t

.field public static final OEM_SECPHONE_START:B = 0xat


# instance fields
.field private m_Command:[B

.field private m_Length:S

.field private m_bos:Ljava/io/ByteArrayOutputStream;

.field private m_dos:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(BB)V
    .registers 5
    .param p1, "Main_Command"    # B
    .param p2, "Sub_Command"    # B

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_bos:Ljava/io/ByteArrayOutputStream;

    .line 34
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_bos:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_dos:Ljava/io/DataOutputStream;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Command:[B

    .line 37
    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 38
    const/4 v1, 0x1

    aput-byte p2, v0, v1

    .line 40
    const/4 v1, 0x2

    .line 41
    .local v1, "sizeofShort":S
    array-length v0, v0

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    .line 42
    return-void
.end method


# virtual methods
.method public addData(B)Lcom/samsung/android/sec_platform_library/PacketBuilder;
    .registers 3
    .param p1, "data"    # B

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 50
    goto :goto_a

    .line 47
    :catch_6
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    :goto_a
    iget-short v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    .line 53
    return-object p0
.end method

.method public addData(S)Lcom/samsung/android/sec_platform_library/PacketBuilder;
    .registers 3
    .param p1, "data"    # S

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 62
    goto :goto_a

    .line 59
    :catch_6
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    :goto_a
    iget-short v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    add-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    .line 65
    return-object p0
.end method

.method public addData([BII)Lcom/samsung/android/sec_platform_library/PacketBuilder;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "iBegin"    # I
    .param p3, "NumOfData"    # I

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 74
    goto :goto_a

    .line 71
    :catch_6
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :goto_a
    iget-short v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    add-int/2addr v0, p3

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    .line 77
    return-object p0
.end method

.method public getPacket()[B
    .registers 7

    .line 81
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 83
    .local v0, "data":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 87
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_10
    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Command:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 88
    iget-short v3, p0, Lcom/samsung/android/sec_platform_library/PacketBuilder;->m_Length:S

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 89
    array-length v3, v0

    invoke-virtual {v2, v0, v5, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_20} :catch_3e
    .catchall {:try_start_10 .. :try_end_20} :catchall_31

    .line 94
    :try_start_20
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 95
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_27

    .line 98
    goto :goto_2c

    .line 96
    :catch_27
    move-exception v3

    .line 97
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 101
    :goto_2c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 93
    :catchall_31
    move-exception v3

    .line 94
    :try_start_32
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 95
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_38} :catch_39

    .line 98
    goto :goto_3d

    .line 96
    :catch_39
    move-exception v4

    .line 97
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3d
    throw v3

    .line 90
    :catch_3e
    move-exception v3

    .line 91
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 94
    :try_start_40
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 95
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_46} :catch_47

    .line 98
    goto :goto_4b

    .line 96
    :catch_47
    move-exception v5

    .line 97
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4b
    return-object v4
.end method
