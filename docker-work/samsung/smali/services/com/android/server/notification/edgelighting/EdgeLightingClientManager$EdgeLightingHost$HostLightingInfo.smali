.class public Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;
.super Ljava/lang/Object;
.source "EdgeLightingClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HostLightingInfo"
.end annotation


# instance fields
.field public mInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

.field public mPackageName:Ljava/lang/String;

.field public final synthetic this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .registers 4

    .line 450
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mPackageName:Ljava/lang/String;

    .line 452
    iput-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    return-void
.end method


# virtual methods
.method public getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .registers 1

    .line 460
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 456
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
