.class public Lcom/android/server/location/gnss/GnssPsdsDownloader;
.super Ljava/lang/Object;
.source "GnssPsdsDownloader.java"


# static fields
.field public static final CONNECTION_TIMEOUT_MS:I

.field public static final DEBUG:Z = true

.field public static final FAIL:I = 0x3

.field public static final FAIL_REASON_DOWNLOAD_ERROR:I = 0x2

.field public static final FAIL_REASON_LARGE_DATA:I = 0x3

.field public static final FAIL_REASON_UNKNOWN:I = 0x4

.field public static final FAIL_REASON_UNKNOWN_SERVER:I = 0x1

.field public static final LONG_TERM_PSDS_SERVER_INDEX:I = 0x1

.field public static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field public static final MAX_PSDS_TYPE_INDEX:I = 0x3

.field public static final NORMAL_PSDS_SERVER_INDEX:I = 0x2

.field public static final PSDS_INTERVAL:J = 0x5265c00L

.field public static final READ_TIMEOUT_MS:I

.field public static final REALTIME_PSDS_SERVER_INDEX:I = 0x3

.field public static final SUCCESS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "GnssPsdsDownloader"

.field public static final TRIGGER:I = 0x1


# instance fields
.field public mFailReason:I

.field public final mLongTermPsdsServers:[Ljava/lang/String;

.field public mNextServerIndex:I

.field public final mPsdsServers:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    const-wide/16 v1, 0x3c

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->READ_TIMEOUT_MS:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 9

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 70
    iput v0, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I

    const-string v1, "LONGTERM_PSDS_SERVER_1"

    .line 76
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LONGTERM_PSDS_SERVER_2"

    .line 78
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LONGTERM_PSDS_SERVER_3"

    .line 80
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1e

    move v6, v5

    goto :goto_1f

    :cond_1e
    move v6, v4

    :goto_1f
    if-eqz v2, :cond_23

    add-int/lit8 v6, v6, 0x1

    :cond_23
    if-eqz v3, :cond_27

    add-int/lit8 v6, v6, 0x1

    :cond_27
    if-nez v6, :cond_34

    const-string v1, "GnssPsdsDownloader"

    const-string v2, "No Long-Term PSDS servers were specified in the GnssConfiguration"

    .line 87
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    goto :goto_56

    .line 90
    :cond_34
    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    if-eqz v1, :cond_3d

    .line 92
    aput-object v1, v6, v4

    move v4, v5

    :cond_3d
    if-eqz v2, :cond_44

    add-int/lit8 v1, v4, 0x1

    .line 93
    aput-object v2, v6, v4

    move v4, v1

    :cond_44
    if-eqz v3, :cond_4b

    add-int/lit8 v1, v4, 0x1

    .line 94
    aput-object v3, v6, v4

    move v4, v1

    .line 97
    :cond_4b
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 98
    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    :goto_56
    const-string v1, "NORMAL_PSDS_SERVER"

    .line 101
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "REALTIME_PSDS_SERVER"

    .line 103
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    const/4 p0, 0x2

    aput-object v1, v0, p0

    const/4 p0, 0x3

    aput-object p1, v0, p0

    return-void
.end method


# virtual methods
.method public final doDownload(Ljava/lang/String;)[B
    .registers 11

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading PSDS data from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssPsdsDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 165
    :try_start_17
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_22} :catch_b0
    .catchall {:try_start_17 .. :try_end_22} :catchall_ae

    :try_start_22
    const-string v2, "Accept"

    const-string v3, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    .line 166
    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "x-wap-profile"

    const-string/jumbo v3, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    .line 169
    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget v2, Lcom/android/server/location/gnss/GnssPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 173
    sget v2, Lcom/android/server/location/gnss/GnssPsdsDownloader;->READ_TIMEOUT_MS:I

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 175
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 176
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_62

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP error downloading gnss PSDS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    .line 181
    iput v2, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_5e} :catch_ac
    .catchall {:try_start_22 .. :try_end_5e} :catchall_c0

    .line 207
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    .line 186
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_ac
    .catchall {:try_start_62 .. :try_end_66} :catchall_c0

    .line 187
    :try_start_66
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 190
    :cond_6f
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_95

    const/4 v6, 0x0

    .line 191
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 192
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0xf4240

    cmp-long v5, v5, v7

    if-lez v5, :cond_6f

    const-string v3, "PSDS file too large"

    .line 193
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    .line 196
    iput v3, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I
    :try_end_8e
    .catchall {:try_start_66 .. :try_end_8e} :catchall_a0

    .line 202
    :try_start_8e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_ac
    .catchall {:try_start_8e .. :try_end_91} :catchall_c0

    .line 207
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    .line 201
    :cond_95
    :try_start_95
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_a0

    .line 202
    :try_start_99
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_ac
    .catchall {:try_start_99 .. :try_end_9c} :catchall_c0

    .line 207
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    :catchall_a0
    move-exception v3

    if-eqz v2, :cond_ab

    .line 186
    :try_start_a3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_ab

    :catchall_a7
    move-exception v2

    :try_start_a8
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ab
    :goto_ab
    throw v3
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ac} :catch_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_c0

    :catch_ac
    move-exception v2

    goto :goto_b2

    :catchall_ae
    move-exception p0

    goto :goto_c2

    :catch_b0
    move-exception v2

    move-object p1, v0

    :goto_b2
    :try_start_b2
    const-string v3, "Error downloading gnss PSDS: "

    .line 204
    invoke-static {v1, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_b2 .. :try_end_b7} :catchall_c0

    if-eqz p1, :cond_bc

    .line 207
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_bc
    const/4 p1, 0x4

    .line 211
    iput p1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I

    return-object v0

    :catchall_c0
    move-exception p0

    move-object v0, p1

    :goto_c2
    if-eqz v0, :cond_c7

    .line 207
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 209
    :cond_c7
    throw p0
.end method

.method public final doDownloadWithTrafficAccounted(Ljava/lang/String;)[B
    .registers 3

    const/16 v0, -0xbc

    .line 149
    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    .line 152
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 154
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 155
    throw p0
.end method

.method public downloadPsdsData(I)[B
    .registers 7

    .line 113
    iget v0, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    const/4 v1, 0x1

    .line 116
    iput v1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_d

    .line 119
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    if-nez v3, :cond_d

    return-object v2

    :cond_d
    const/4 v3, 0x3

    if-le p1, v1, :cond_19

    if-gt p1, v3, :cond_19

    .line 121
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-nez v4, :cond_19

    return-object v2

    :cond_19
    if-ne p1, v1, :cond_39

    :cond_1b
    if-nez v2, :cond_45

    .line 129
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownloadWithTrafficAccounted(Ljava/lang/String;)[B

    move-result-object v2

    .line 132
    iget p1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 133
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    array-length v3, v3

    if-ne p1, v3, :cond_34

    const/4 p1, 0x0

    .line 134
    iput p1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 137
    :cond_34
    iget p1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    if-ne p1, v0, :cond_1b

    goto :goto_45

    :cond_39
    if-le p1, v1, :cond_45

    if-gt p1, v3, :cond_45

    .line 140
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownloadWithTrafficAccounted(Ljava/lang/String;)[B

    move-result-object v2

    :cond_45
    :goto_45
    return-object v2
.end method

.method public getFailReason()I
    .registers 1

    .line 218
    iget p0, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I

    return p0
.end method
