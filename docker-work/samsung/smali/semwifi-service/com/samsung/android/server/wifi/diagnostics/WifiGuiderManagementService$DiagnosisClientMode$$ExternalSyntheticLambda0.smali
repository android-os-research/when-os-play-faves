.class public final synthetic Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    iput p2, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->$r8$lambda$ogr0boFTRlhk7nL560EtzTfSRwI(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;I)V

    return-void
.end method
