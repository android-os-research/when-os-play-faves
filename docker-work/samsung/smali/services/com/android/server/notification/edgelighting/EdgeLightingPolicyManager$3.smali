.class public Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
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
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .registers 2

    .line 179
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-static {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$fputmVrMode(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)V

    return-void
.end method
