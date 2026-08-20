.class public Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;
.super Ljava/lang/Thread;
.source "ConfigUpdateInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/updates/ConfigUpdateInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 4

    .line 63
    iput-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iput-object p2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "ConfigUpdateInstallReceiver"

    const v1, 0xc864

    .line 68
    :try_start_5
    iget-object v2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$mgetVersionFromIntent(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I

    move-result v2

    .line 70
    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v3, v4}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$mgetRequiredHashFromIntent(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 72
    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v4}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$mgetCurrentVersion(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I

    move-result v4

    .line 74
    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v5}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$mgetCurrentContent(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$smgetCurrentHash([B)Ljava/lang/String;

    move-result-object v5

    .line 75
    iget-object v6, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-virtual {v6, v4, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyVersion(II)Z

    move-result v4

    if-nez v4, :cond_33

    const-string p0, "Not installing, new version is <= current version"

    .line 76
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 77
    :cond_33
    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-static {v4, v5, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$mverifyPreviousHash(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string p0, "Current hash did not match required value"

    .line 78
    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto :goto_91

    :cond_41
    const-string v3, "Found new update, installing..."

    .line 82
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v3, v4, v5}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->-$$Nest$mgetAltContent(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)Ljava/io/BufferedInputStream;

    move-result-object v3
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_50} :catch_75

    .line 84
    :try_start_50
    iget-object v4, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install(Ljava/io/InputStream;I)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_69

    if-eqz v3, :cond_5a

    .line 85
    :try_start_57
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_5a
    const-string v2, "Installation successful"

    .line 86
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v3, p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_68} :catch_75

    goto :goto_91

    :catchall_69
    move-exception p0

    if-eqz v3, :cond_74

    .line 83
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception v2

    :try_start_71
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    throw p0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_75} :catch_75

    :catch_75
    move-exception p0

    const-string v2, "Could not update content!"

    .line 90
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_8e

    const/4 v0, 0x0

    const/16 v2, 0x63

    .line 94
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 96
    :cond_8e
    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    :goto_91
    return-void
.end method
