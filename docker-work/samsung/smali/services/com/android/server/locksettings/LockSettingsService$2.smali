.class public Lcom/android/server/locksettings/LockSettingsService$2;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsService;->onUnlockUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 3

    .line 1168
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 3

    const/4 v0, 0x4

    .line 1198
    invoke-virtual {p1, p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyDerivationRequired(II)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1171
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mcleanupDataForReusedUserIdIfNecessary(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 1172
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mensureProfileKeystoreUnlocked(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 1174
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mhideEncryptionNotification(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V

    .line 1176
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1177
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 1184
    :cond_2f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misUserSecure(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v0

    if-nez v0, :cond_50

    .line 1185
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mtryDeriveAuthTokenForUnsecuredPrimaryUser(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 1189
    :cond_50
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-static {v0, p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$maddListenerForMaintenanceMode(Lcom/android/server/locksettings/LockSettingsService;I)V

    return-void
.end method
