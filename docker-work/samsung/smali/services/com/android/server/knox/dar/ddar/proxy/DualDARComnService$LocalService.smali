.class public final Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;
.super Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManagerInternal;
.source "DualDARComnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)V
    .registers 2

    .line 759
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;-><init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;)V

    return-void
.end method


# virtual methods
.method public ensureProxyAgentBindingIfRequired(Ljava/lang/String;)V
    .registers 2

    .line 763
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$LocalService;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->ensureProxyAgentBindingIfRequired(Ljava/lang/String;)V

    return-void
.end method
