.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/samsung/android/server/wifi/WifiConnectionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda7;->f$2:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda7;->f$2:Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->$r8$lambda$l57b6WLbshOuDF6GwEBvDiybvV0(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    return-void
.end method
