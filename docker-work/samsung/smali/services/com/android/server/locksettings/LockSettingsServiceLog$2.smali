.class public Lcom/android/server/locksettings/LockSettingsServiceLog$2;
.super Ljava/lang/Thread;
.source "LockSettingsServiceLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsServiceLog;->writeLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsServiceLog;)V
    .registers 2

    .line 324
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$2;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-wide/16 v0, 0x3e8

    .line 329
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1e

    :catch_6
    move-exception v0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sleep error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_1e
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$2;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->-$$Nest$mshowDump(Lcom/android/server/locksettings/LockSettingsServiceLog;)V

    return-void
.end method
