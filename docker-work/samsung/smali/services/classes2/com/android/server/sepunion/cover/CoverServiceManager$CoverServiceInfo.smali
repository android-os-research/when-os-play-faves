.class public abstract Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
.super Ljava/lang/Object;
.source "CoverServiceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "CoverServiceInfo"
.end annotation


# static fields
.field public static final RETRY_CONNECT_COUNT:I = 0x5

.field public static final TAG:Ljava/lang/String; = "CoverServiceInfo"


# instance fields
.field public final binder:Landroid/os/IBinder;

.field public final component:Landroid/content/ComponentName;

.field public final connection:Landroid/content/ServiceConnection;

.field public disconnectionCount:I

.field public final service:Landroid/os/IInterface;

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

.field public final type:I

.field public user:Landroid/os/UserHandle;


# direct methods
.method public static bridge synthetic -$$Nest$fgetcomponent(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetconnection(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->connection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgettype(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetuser(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .registers 7

    .line 847
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 852
    iput p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    .line 853
    iput-object p4, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->binder:Landroid/os/IBinder;

    .line 854
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    .line 855
    iput-object p5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 856
    iput-object p6, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;

    const/4 p1, 0x0

    .line 857
    iput p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    return-void
.end method


# virtual methods
.method public abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public binderDied()V
    .registers 3

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverServiceInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v0, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mremoveCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    return-void
.end method

.method public disconnect()Z
    .registers 3

    .line 879
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    const/4 p0, 0x5

    if-ge v0, p0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public abstract onCoverAppStateChanged(Z)I
.end method

.method public abstract systemReady()V
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 875
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "CoverServiceInfo[component=%s, type=%s, service=%s, user=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unbind()V
    .registers 1

    return-void
.end method

.method public abstract updateCoverState(Lcom/samsung/android/cover/CoverState;)V
.end method
