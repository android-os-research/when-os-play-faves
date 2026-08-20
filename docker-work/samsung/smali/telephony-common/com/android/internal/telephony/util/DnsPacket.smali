.class public abstract Lcom/android/internal/telephony/util/DnsPacket;
.super Ljava/lang/Object;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;,
        Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;,
        Lcom/android/internal/telephony/util/DnsPacket$ParseException;
    }
.end annotation


# static fields
.field public static final blacklist ANSECTION:I = 0x1

.field public static final blacklist ARSECTION:I = 0x3

.field public static final blacklist NSSECTION:I = 0x2

.field public static final blacklist QDSECTION:I


# instance fields
.field protected final blacklist mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

.field protected final blacklist mRecords:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor blacklist <init>([B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_52

    .line 182
    :try_start_5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 183
    new-instance v0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;-><init>(Lcom/android/internal/telephony/util/DnsPacket;Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/android/internal/telephony/util/DnsPacket;->mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;
    :try_end_10
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_10} :catch_49

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/util/ArrayList;

    .line 188
    iput-object v1, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_48

    .line 191
    iget-object v3, p0, Lcom/android/internal/telephony/util/DnsPacket;->mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v3

    if-lez v3, :cond_2a

    .line 193
    iget-object v4, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v5, v4, v2

    :cond_2a
    move v4, v1

    :goto_2b
    if-ge v4, v3, :cond_45

    .line 197
    :try_start_2d
    iget-object v5, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object v5, v5, v2

    new-instance v6, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;

    invoke-direct {v6, p0, v2, p1}, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;-><init>(Lcom/android/internal/telephony/util/DnsPacket;ILjava/nio/ByteBuffer;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2d .. :try_end_39} :catch_3c

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :catch_3c
    move-exception p0

    .line 199
    new-instance p1, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string v0, "Parse record fail"

    invoke-direct {p1, v0, p0}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_48
    return-void

    :catch_49
    move-exception p0

    .line 185
    new-instance p1, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string v0, "Parse Header fail, bad input data"

    invoke-direct {p1, v0, p0}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 177
    :cond_52
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string p1, "Parse header failed, null input data"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
