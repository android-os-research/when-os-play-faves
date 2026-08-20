.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->$r8$lambda$7lC2OhbQiOktkxBUgm4RR5iPqlk(Lcom/samsung/android/server/wifi/SemClientModeManager;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    return-void
.end method
