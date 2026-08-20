.class public Lcom/android/server/backup/keyvalue/BackupRequest;
.super Ljava/lang/Object;
.source "BackupRequest.java"


# instance fields
.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 40
    :cond_4
    instance-of v0, p1, Lcom/android/server/backup/keyvalue/BackupRequest;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 43
    :cond_a
    check-cast p1, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 44
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupRequest{pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
