.class public Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$4;
.super Landroid/content/BroadcastReceiver;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$4;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 278
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$4;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-static {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$fgetmActivityManager(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Landroid/app/ActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$fputmLockState(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;I)V

    return-void
.end method
