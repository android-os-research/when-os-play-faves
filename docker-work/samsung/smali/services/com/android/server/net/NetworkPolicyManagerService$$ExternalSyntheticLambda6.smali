.class public final synthetic Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    return-void
.end method


# virtual methods
.method public final onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->$r8$lambda$naHjeVatjK19CSjywT8_JYdgW1w(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method
