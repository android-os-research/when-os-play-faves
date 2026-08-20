.class public Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisableRecord"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

.field public token:Landroid/os/IBinder;

.field public what:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V
    .registers 2

    .line 889
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 897
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died for packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 899
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
