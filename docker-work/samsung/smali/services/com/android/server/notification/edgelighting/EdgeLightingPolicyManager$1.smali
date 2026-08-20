.class public Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;
.super Landroid/database/ContentObserver;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V
    .registers 3

    .line 139
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 142
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$fgetmDisableNotificationAlerts(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$fputmUseHeadsUp(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)V

    .line 144
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "heads up is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-static {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$fgetmUseHeadsUp(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Z

    move-result p0

    if-eqz p0, :cond_25

    const-string p0, "enabled"

    goto :goto_27

    :cond_25
    const-string p0, "disabled"

    :goto_27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
