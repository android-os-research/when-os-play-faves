.class public Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ManagedServiceInfo"
.end annotation


# instance fields
.field public component:Landroid/content/ComponentName;

.field public connection:Landroid/content/ServiceConnection;

.field public isSystem:Z

.field public mKey:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public service:Landroid/os/IInterface;

.field public targetSdkVersion:I

.field public final synthetic this$0:Lcom/android/server/notification/ManagedServices;

.field public uid:I

.field public userid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;II)V
    .registers 9

    .line 1742
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1743
    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 1744
    iput-object p3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 1745
    iput p4, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 1746
    iput-boolean p5, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 1747
    iput-object p6, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 1748
    iput p7, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    .line 1749
    iput p8, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    .line 1750
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->mKey:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1808
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-boolean v1, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v1, :cond_d

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_d
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-static {v0, v1, p0}, Lcom/android/server/notification/ManagedServices;->-$$Nest$mremoveServiceImpl(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/ManagedServices;)V
    .registers 8

    .line 1774
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1775
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1776
    iget v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1777
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1778
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    const-wide v1, 0x10800000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1779
    invoke-virtual {p0, p4}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result p0

    const-wide v0, 0x10800000005L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1780
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public enabledAndUserMatches(I)Z
    .registers 7

    .line 1791
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1794
    :cond_8
    iget v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_f

    return v3

    .line 1795
    :cond_f
    iget-boolean v4, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v4, :cond_14

    return v3

    :cond_14
    if-eq p1, v2, :cond_33

    if-ne p1, v0, :cond_19

    goto :goto_33

    .line 1797
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    .line 1798
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1799
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isPermittedForProfile(I)Z

    move-result p0

    if-eqz p0, :cond_32

    move v1, v3

    :cond_32
    return v1

    :cond_33
    :goto_33
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    .line 1854
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    .line 1855
    :cond_12
    check-cast p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1856
    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    iget v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v2, v3, :cond_45

    iget-boolean v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    iget-boolean v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-ne v2, v3, :cond_45

    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    iget v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-ne v2, v3, :cond_45

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 1859
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 1860
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 1861
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    goto :goto_46

    :cond_45
    move v0, v1

    :goto_46
    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public getOwner()Lcom/android/server/notification/ManagedServices;
    .registers 1

    .line 1758
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1866
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEnabledForCurrentProfiles()Z
    .registers 3

    .line 1818
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 1819
    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1825
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-$$Nest$fgetmEnabledServicesLock(Lcom/android/server/notification/ManagedServices;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1826
    :try_start_13
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->-$$Nest$fgetmEnabledServicesForCurrentProfiles(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_21
    move-exception p0

    .line 1827
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public isGuest(Lcom/android/server/notification/ManagedServices;)Z
    .registers 2

    .line 1754
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    if-eq p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isPermittedForProfile(I)Z
    .registers 5

    .line 1837
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 1840
    :cond_e
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 1841
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1842
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1844
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 1845
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1844
    invoke-virtual {v0, p0, p1}, Landroid/app/admin/DevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result p0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2c

    .line 1847
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1848
    throw p0
.end method

.method public isSameUser(I)Z
    .registers 4

    .line 1784
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    .line 1787
    iget p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne p1, p0, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public supportsProfiles()Z
    .registers 2

    .line 1803
    iget p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ManagedServiceInfo["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "component="

    .line 1764
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",userid="

    .line 1765
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isSystem="

    .line 1766
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",targetSdkVersion="

    .line 1767
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",connection="

    .line 1768
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_3a

    const/4 v1, 0x0

    goto :goto_3c

    :cond_3a
    const-string v1, "<connection>"

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",service="

    .line 1769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 1770
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
