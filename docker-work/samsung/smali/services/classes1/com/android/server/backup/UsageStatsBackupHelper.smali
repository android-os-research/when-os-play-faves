.class public Lcom/android/server/backup/UsageStatsBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "UsageStatsBackupHelper.java"


# static fields
.field public static final BLOB_VERSION:I = 0x1

.field public static final DEBUG:Z = false

.field public static final KEY_USAGE_STATS:Ljava/lang/String; = "usage_stats"

.field public static final TAG:Ljava/lang/String; = "UsgStatsBackupHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo p1, "usage_stats"

    .line 30
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 7

    const-string/jumbo p0, "usage_stats"

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 56
    const-class p0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 57
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 58
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 61
    array-length p2, p2

    add-int/lit8 p2, p2, -0x4

    new-array v2, p2, [B

    const/4 v3, 0x0

    .line 62
    invoke-virtual {v0, v2, v3, p2}, Ljava/io/DataInputStream;->read([BII)I

    .line 63
    invoke-virtual {p0, v1, p1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->applyRestoredPayload(ILjava/lang/String;[B)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2b} :catch_2b

    :catch_2b
    :cond_2b
    return-void
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .registers 5

    const-string/jumbo p0, "usage_stats"

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 36
    const-class p0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 37
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 38
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    .line 41
    :try_start_1c
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 42
    invoke-virtual {p0, v2, p1}, Landroid/app/usage/UsageStatsManagerInternal;->getBackupPayload(ILjava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_2a

    .line 45
    :catch_27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 47
    :goto_2a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method
