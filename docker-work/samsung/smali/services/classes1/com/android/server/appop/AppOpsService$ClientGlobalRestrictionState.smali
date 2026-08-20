.class public final Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClientGlobalRestrictionState"
.end annotation


# instance fields
.field public final mRestrictedOps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7604
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7601
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mRestrictedOps:Landroid/util/ArraySet;

    const/4 p1, 0x0

    .line 7605
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 7606
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 7627
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->destroy()V

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 7631
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public hasRestriction(I)Z
    .registers 2

    .line 7618
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mRestrictedOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDefault()Z
    .registers 1

    .line 7622
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mRestrictedOps:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public setRestriction(IZ)Z
    .registers 3

    if-eqz p2, :cond_d

    .line 7611
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mRestrictedOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 7613
    :cond_d
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mRestrictedOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
