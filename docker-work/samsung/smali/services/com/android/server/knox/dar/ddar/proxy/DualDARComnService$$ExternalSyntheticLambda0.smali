.class public final synthetic Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    iput p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    iget p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->$r8$lambda$ZSdWxu0RTCFr01jRWc_ORBJksLo(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;ILcom/samsung/android/knox/ddar/IDualDARPolicy;)V

    return-void
.end method
