.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemClientModeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda32;->f$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda32;->f$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getCountryRev()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
