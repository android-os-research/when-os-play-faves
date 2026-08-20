.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$DarLockSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/server/knox/dar/DarManagerService;

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->$r8$lambda$dlXY3R5bkz3fFK8EvNmziIFZPqU(ILcom/android/server/knox/dar/DarManagerService;)V

    return-void
.end method
