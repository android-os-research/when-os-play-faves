.class Landroid/telephony/TelephonyManager$17;
.super Landroid/telephony/IBootstrapAuthenticationCallback$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->bootstrapAuthenticationRequest(ILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist val$callback:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

.field final synthetic blacklist val$e:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;

    .line 17886
    iput-object p1, p0, Landroid/telephony/TelephonyManager$17;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$17;->val$e:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$17;->val$callback:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    invoke-direct {p0}, Landroid/telephony/IBootstrapAuthenticationCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onAuthenticationFailure$1(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;
    .param p1, "reason"    # I

    .line 17902
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;->onAuthenticationFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onKeysAvailable$0(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;[BLjava/lang/String;)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;
    .param p1, "gbaKey"    # [B
    .param p2, "transactionId"    # Ljava/lang/String;

    .line 17892
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;->onKeysAvailable([BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist onAuthenticationFailure(II)V
    .registers 8
    .param p1, "token"    # I
    .param p2, "reason"    # I

    .line 17900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 17902
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/TelephonyManager$17;->val$e:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$17;->val$callback:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    new-instance v4, Landroid/telephony/TelephonyManager$17$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p2}, Landroid/telephony/TelephonyManager$17$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 17904
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17905
    nop

    .line 17906
    return-void

    .line 17904
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17905
    throw v2
.end method

.method public blacklist onKeysAvailable(I[BLjava/lang/String;)V
    .registers 9
    .param p1, "token"    # I
    .param p2, "gbaKey"    # [B
    .param p3, "transactionId"    # Ljava/lang/String;

    .line 17890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 17892
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/TelephonyManager$17;->val$e:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$17;->val$callback:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    new-instance v4, Landroid/telephony/TelephonyManager$17$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p2, p3}, Landroid/telephony/TelephonyManager$17$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;[BLjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 17894
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17895
    nop

    .line 17896
    return-void

    .line 17894
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17895
    throw v2
.end method
