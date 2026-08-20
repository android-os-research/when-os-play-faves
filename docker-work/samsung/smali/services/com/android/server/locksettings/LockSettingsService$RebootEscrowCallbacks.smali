.class public Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RebootEscrowCallbacks"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    .line 5176
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public isUserSecure(I)Z
    .registers 2

    .line 5179
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misUserSecure(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result p0

    return p0
.end method

.method public onRebootEscrowRestored(B[BI)V
    .registers 11

    .line 5185
    new-instance v6, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v6, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    .line 5186
    invoke-virtual {v6, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateDirectly([B)V

    .line 5187
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object p1

    monitor-enter p1

    .line 5188
    :try_start_f
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p2}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-object v2, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 5189
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_2d

    .line 5190
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, v6, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mloadPasswordMetrics(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    invoke-static {p0, v6, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$monCredentialVerified(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Landroid/app/admin/PasswordMetrics;I)V

    return-void

    :catchall_2d
    move-exception p0

    .line 5189
    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method
