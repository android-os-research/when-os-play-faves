.class Lcom/android/commands/bmgr/Bmgr$BackupMonitor;
.super Landroid/app/backup/IBackupManagerMonitor$Stub;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/bmgr/Bmgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupMonitor"
.end annotation


# instance fields
.field private final mVerbose:Z


# direct methods
.method private constructor <init>(Z)V
    .registers 2
    .param p1, "verbose"    # Z

    .line 1029
    invoke-direct {p0}, Landroid/app/backup/IBackupManagerMonitor$Stub;-><init>()V

    .line 1030
    iput-boolean p1, p0, Lcom/android/commands/bmgr/Bmgr$BackupMonitor;->mVerbose:Z

    .line 1031
    return-void
.end method

.method synthetic constructor <init>(ZLcom/android/commands/bmgr/Bmgr$BackupMonitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/commands/bmgr/Bmgr$BackupMonitor;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "event"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1036
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "android.app.backup.extra.LOG_EVENT_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1037
    .local v2, "id":I
    const-string v3, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1038
    .local v4, "category":I
    const-string v5, "=> Event{"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/android/commands/bmgr/Bmgr;->-$$Nest$smeventCategoryToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    const-string v5, " / "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/commands/bmgr/Bmgr;->-$$Nest$smeventIdToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    const-string v5, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1041
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "android.app.backup.extra.LOG_EVENT_PACKAGE_FULL_VERSION"

    if-eqz v6, :cond_58

    .line 1042
    const-string v8, " : package = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 1044
    nop

    .line 1045
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1047
    .local v8, "version":J
    const-string v10, "(v"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    .end local v8    # "version":J
    :cond_58
    iget-boolean v8, p0, Lcom/android/commands/bmgr/Bmgr$BackupMonitor;->mVerbose:Z

    if-eqz v8, :cond_9b

    .line 1051
    new-instance v8, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1052
    .local v8, "remainingKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1053
    invoke-interface {v8, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1054
    invoke-interface {v8, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1055
    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1056
    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    invoke-interface {v8, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1057
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 1058
    const-string v1, ", other keys ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1060
    .local v3, "key":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_85

    .line 1064
    .end local v8    # "remainingKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9b
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1066
    return-void
.end method
