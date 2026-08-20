.class public final synthetic Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/SemFrameworkFacade;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->$r8$lambda$xU0muU9ANpz8YBOYWGb-8_T4Q1I(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    return-void
.end method
