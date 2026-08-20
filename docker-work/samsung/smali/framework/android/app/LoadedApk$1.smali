.class Landroid/app/LoadedApk$1;
.super Ljava/lang/Object;
.source "LoadedApk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/LoadedApk;->registerAppInfoToArt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/LoadedApk;


# direct methods
.method constructor blacklist <init>(Landroid/app/LoadedApk;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/LoadedApk;

    .line 1230
    iput-object p1, p0, Landroid/app/LoadedApk$1;->this$0:Landroid/app/LoadedApk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 1234
    const/16 v0, 0xbb8

    .line 1235
    .local v0, "spegMaxTimeWaitingMs":I
    const/16 v1, 0x32

    .line 1238
    .local v1, "spegSleepTimeMs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget-object v3, p0, Landroid/app/LoadedApk$1;->this$0:Landroid/app/LoadedApk;

    invoke-static {v3}, Landroid/app/LoadedApk;->-$$Nest$misSpeg(Landroid/app/LoadedApk;)Z

    move-result v3

    if-eqz v3, :cond_17

    if-ge v2, v0, :cond_17

    .line 1240
    int-to-long v3, v1

    :try_start_10
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    .line 1243
    goto :goto_15

    .line 1241
    :catch_14
    move-exception v3

    .line 1238
    :goto_15
    add-int/2addr v2, v1

    goto :goto_5

    .line 1246
    .end local v2    # "i":I
    :cond_17
    :try_start_17
    iget-object v2, p0, Landroid/app/LoadedApk$1;->this$0:Landroid/app/LoadedApk;

    invoke-static {v2}, Landroid/app/LoadedApk;->-$$Nest$mspegRestore(Landroid/app/LoadedApk;)V
    :try_end_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 1249
    goto :goto_1e

    .line 1247
    :catch_1d
    move-exception v2

    .line 1250
    :goto_1e
    return-void
.end method
