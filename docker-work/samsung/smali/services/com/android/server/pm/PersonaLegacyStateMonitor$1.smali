.class public Lcom/android/server/pm/PersonaLegacyStateMonitor$1;
.super Landroid/os/ContainerStateReceiver;
.source "PersonaLegacyStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaLegacyStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaLegacyStateMonitor;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 287
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 321
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 11

    .line 329
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p3, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 330
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p3, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 331
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-static {p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p1

    .line 332
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-static {v0}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sending container removed intent to MDM for user "

    const-string v1, "PersonaManagerService::LegacyStateMonitor"

    if-eqz p1, :cond_58

    .line 335
    array-length v2, p1

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v2, :cond_70

    aget-object v4, p1, v3

    .line 336
    iget-object v5, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-static {v5, v4, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$msendIntentForRemoveContainer(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Package is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 340
    :cond_58
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    const/4 p1, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$msendIntentForRemoveContainer(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V

    .line 341
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-void
.end method

.method public onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 291
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-static {p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$fgetmUserManager(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_14

    .line 293
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_51

    .line 295
    :cond_14
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p3

    and-int/lit8 p3, p3, 0x8

    if-lez p3, :cond_26

    .line 296
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_51

    .line 297
    :cond_26
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p3

    and-int/lit8 p3, p3, 0x10

    if-lez p3, :cond_38

    .line 298
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_51

    .line 299
    :cond_38
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p3

    and-int/lit8 p3, p3, 0x4

    if-lez p3, :cond_4a

    .line 300
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_51

    .line 302
    :cond_4a
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    :goto_51
    return-void
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 307
    iget-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-static {p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$fgetmUserManager(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_14

    .line 309
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_49

    .line 311
    :cond_14
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    if-lez p2, :cond_26

    .line 312
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_49

    .line 313
    :cond_26
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p2

    and-int/lit8 p2, p2, 0x10

    if-lez p2, :cond_38

    .line 314
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_49

    .line 315
    :cond_38
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result p2

    and-int/lit8 p2, p2, 0x4

    if-lez p2, :cond_49

    .line 316
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 325
    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object p1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->-$$Nest$mnotifyStateChange(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method
