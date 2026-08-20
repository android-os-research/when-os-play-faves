.class Landroid/util/NtpTrustedTime$NtpConnectionInfo;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NtpConnectionInfo"
.end annotation


# instance fields
.field private final blacklist mPort:I

.field private final blacklist mServer:Ljava/lang/String;

.field private final blacklist mTimeoutMillis:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeoutMillis"    # I

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mServer:Ljava/lang/String;

    .line 387
    iput p2, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mPort:I

    .line 388
    iput p3, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mTimeoutMillis:I

    .line 389
    return-void
.end method


# virtual methods
.method public blacklist getPort()I
    .registers 2

    .line 398
    iget v0, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mPort:I

    return v0
.end method

.method public blacklist getServer()Ljava/lang/String;
    .registers 2

    .line 393
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getTimeoutMillis()I
    .registers 2

    .line 402
    iget v0, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mTimeoutMillis:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NtpConnectionInfo{mServer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mPort=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->mTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
