.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->$r8$lambda$BAAncVst-uw4AgcH_28uR2U_0hg(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
