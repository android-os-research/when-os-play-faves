.class public Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;
.super Ljava/lang/Object;
.source "EdgeLightingClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V
    .registers 3

    .line 529
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iput-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 533
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->val$packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->-$$Nest$mstartEdgeLightingService(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V

    return-void
.end method
