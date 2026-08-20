.class public Lcom/android/server/backup/fullbackup/FullBackupEntry;
.super Ljava/lang/Object;
.source "FullBackupEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public lastBackup:J

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 26
    iput-wide p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/backup/fullbackup/FullBackupEntry;)I
    .registers 5

    .line 31
    iget-wide v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    iget-wide p0, p1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    cmp-long v2, v0, p0

    if-gez v2, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    cmp-long p0, v0, p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 19
    check-cast p1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/fullbackup/FullBackupEntry;->compareTo(Lcom/android/server/backup/fullbackup/FullBackupEntry;)I

    move-result p0

    return p0
.end method
