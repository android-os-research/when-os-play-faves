.class public Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    .line 108
    :goto_5
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$fgetmRinging(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Z

    move-result p1

    if-ne p2, p1, :cond_e

    return-void

    .line 111
    :cond_e
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-static {p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$fputmRinging(Lcom/android/server/notification/edgelighting/EdgeLightingManager;Z)V

    .line 116
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$fgetmEdgeLightingPolicyManager(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-static {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$fgetmRinging(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->setRinging(Z)V

    return-void
.end method
