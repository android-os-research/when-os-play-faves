.class public final Lcom/android/server/am/BackupRecord;
.super Ljava/lang/Object;
.source "BackupRecord.java"


# static fields
.field public static final BACKUP_FULL:I = 0x1

.field public static final BACKUP_NORMAL:I = 0x0

.field public static final RESTORE:I = 0x2

.field public static final RESTORE_FULL:I = 0x3


# instance fields
.field public app:Lcom/android/server/am/ProcessRecord;

.field public final appInfo:Landroid/content/pm/ApplicationInfo;

.field public final backupMode:I

.field public final operationType:I

.field public stringName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;III)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/am/BackupRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 42
    iput p2, p0, Lcom/android/server/am/BackupRecord;->backupMode:I

    .line 43
    iput p3, p0, Lcom/android/server/am/BackupRecord;->userId:I

    .line 44
    iput p4, p0, Lcom/android/server/am/BackupRecord;->operationType:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/android/server/am/BackupRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 51
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackupRecord{"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BackupRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BackupRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BackupRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BackupRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method
