.class public final Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InProgressStartOpEvent"
.end annotation


# instance fields
.field public mAttributionChainId:I

.field public mAttributionFlags:I

.field public mAttributionTag:Ljava/lang/String;

.field public mClientId:Landroid/os/IBinder;

.field public mFlags:I

.field public mOnDeath:Ljava/lang/Runnable;

.field public mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

.field public mStartElapsedTime:J

.field public mStartTime:J

.field public mUidState:I

.field public numUnfinishedStarts:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClientId(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlags(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I
    .registers 1

    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidState(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I
    .registers 1

    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmStartElapsedTime(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStartTime(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    return-void
.end method

.method public constructor <init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;III)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    .line 818
    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 819
    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 820
    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionTag:Ljava/lang/String;

    .line 821
    iput-object p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 822
    iput p8, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    .line 823
    iput-object p9, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 824
    iput p10, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    .line 825
    iput p11, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionFlags:I

    .line 826
    iput p12, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionChainId:I

    const/4 p1, 0x0

    .line 828
    invoke-interface {p5, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public synthetic constructor <init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;IIILcom/android/server/appop/AppOpsService$InProgressStartOpEvent-IA;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;-><init>(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILandroid/app/AppOpsManager$OpEventProxyInfo;III)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 843
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public finish()V
    .registers 3

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_1e

    :catch_7
    move-exception p0

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoSuchElementException calling unlinkToDeath(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppOps"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method public getAttributionChainId()I
    .registers 1

    .line 924
    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionChainId:I

    return p0
.end method

.method public getAttributionFlags()I
    .registers 1

    .line 919
    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionFlags:I

    return p0
.end method

.method public getClientId()Landroid/os/IBinder;
    .registers 1

    .line 899
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object p0
.end method

.method public getFlags()I
    .registers 1

    .line 914
    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    return p0
.end method

.method public getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 1

    .line 909
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    return-object p0
.end method

.method public getStartElapsedTime()J
    .registers 3

    .line 894
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .line 889
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    return-wide v0
.end method

.method public getUidState()I
    .registers 1

    .line 904
    iget p0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return p0
.end method

.method public reinit(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;IILandroid/app/AppOpsManager$OpEventProxyInfo;IILandroid/util/Pools$Pool;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "II",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            "II",
            "Landroid/util/Pools$Pool<",
            "Landroid/app/AppOpsManager$OpEventProxyInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 869
    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    .line 870
    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    .line 871
    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 872
    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionTag:Ljava/lang/String;

    .line 873
    iput-object p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    .line 874
    iput p8, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    .line 875
    iput p9, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mFlags:I

    .line 877
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz p1, :cond_15

    .line 878
    invoke-interface {p13, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 880
    :cond_15
    iput-object p10, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 881
    iput p11, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionFlags:I

    .line 882
    iput p12, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mAttributionChainId:I

    const/4 p1, 0x0

    .line 884
    invoke-interface {p5, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method
