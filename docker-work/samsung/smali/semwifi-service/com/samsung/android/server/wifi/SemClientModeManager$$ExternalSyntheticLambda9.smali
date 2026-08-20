.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/ClientModeStateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ClientModeStateListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;->f$1:Lcom/samsung/android/server/wifi/ClientModeStateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda9;->f$1:Lcom/samsung/android/server/wifi/ClientModeStateListener;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->$r8$lambda$kN-wOs8e01E82SHlNd8P4ZwHDsM(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    return-void
.end method
