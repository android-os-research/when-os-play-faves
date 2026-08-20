.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final synthetic f$1:Landroid/companion/AssociationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda4;->f$1:Landroid/companion/AssociationInfo;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda4;->f$1:Landroid/companion/AssociationInfo;

    invoke-static {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->$r8$lambda$KMv89jv8BUId1jtHv6UM2YBOxqU(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationInfo;)V

    return-void
.end method
